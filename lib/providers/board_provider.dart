import 'package:my_shogi/models/board.dart';
import 'package:my_shogi/models/captured_pieces.dart';
import 'package:my_shogi/models/position.dart';
import 'package:my_shogi/models/shogi_piece.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'board_provider.g.dart';

@riverpod
class BoardNotifier extends _$BoardNotifier {
  @override
  FutureOr<Board> build() async {
    return Board.initialize();
  }

  void resetBoard() {
    state = AsyncValue.data(Board.initialize());
  }

  void selectPiece(ShogiPiece piece, Position? position) {
    final currentBoard = state.value;
    if (currentBoard != null) {
      final updatedBoard = currentBoard.copyWith(
        currentPiece: piece,
        selectedPosition: position,
      );
      state = AsyncValue.data(updatedBoard);
    }
  }

  void movePiece(Position to, bool isPromote) {
    final currentBoard = state.value;

    if (currentBoard == null || !currentBoard.canMove(to)) {
      resetSelection();
      return;
    }

    // 成り処理
    final promotedPiece = currentBoard.currentPiece!.promotePiece();
    final movingPiece = isPromote && promotedPiece != null
        ? promotedPiece
        : currentBoard.currentPiece!;

    // 移動先のマス
    final targetPiece = currentBoard.grid[to.y][to.x];
    CapturedPieces newPieces =
        currentBoard.isPlayerTurn ? currentBoard.pieces1 : currentBoard.pieces2;
    if (targetPiece != null &&
        targetPiece.isOwner == currentBoard.currentPiece!.isOwner) {
      resetSelection();
      return;
    } else if (targetPiece != null &&
        targetPiece.isOwner != currentBoard.currentPiece!.isOwner) {
      if (currentBoard.isPlayerTurn) {
        if (targetPiece.isPromoted) {
          newPieces = currentBoard.pieces1.add(targetPiece);
        } else {
          newPieces = currentBoard.pieces1.add(targetPiece);
        }
      } else {
        if (targetPiece.isPromoted) {
          newPieces = currentBoard.pieces2.add(targetPiece);
        } else {
          newPieces = currentBoard.pieces2.add(targetPiece);
        }
      }
    }

    // 駒の移動
    final newGrid = List<List<ShogiPiece?>>.from(currentBoard.grid);
    newGrid[currentBoard.selectedPosition!.y]
        [currentBoard.selectedPosition!.x] = null;
    newGrid[to.y][to.x] = movingPiece;

    final updatedBoard = currentBoard.copyWith(
      grid: newGrid,
      winner: (targetPiece != null && targetPiece.isKing)
          ? currentBoard.isPlayerTurn
          : null,
      isPlayerTurn: !currentBoard.isPlayerTurn,
      pieces1: currentBoard.isPlayerTurn ? newPieces : currentBoard.pieces1,
      pieces2: currentBoard.isPlayerTurn ? currentBoard.pieces2 : newPieces,
      currentPiece: null,
      selectedPosition: null,
    );

    state = AsyncValue.data(updatedBoard);
  }

  void putPiece(
    ShogiPiece piece,
    Position position,
  ) {
    final currentBoard = state.value;

    if (currentBoard == null ||
        currentBoard.isPlayerTurn != piece.isOwner ||
        !currentBoard.canPut(position)) {
      resetSelection();
      return;
    }

    // 盤面に追加
    final newGrid = List<List<ShogiPiece?>>.from(currentBoard.grid);
    newGrid[position.y][position.x] = piece;

    final updatedBoard = currentBoard.copyWith(
      grid: newGrid,
      isPlayerTurn: !currentBoard.isPlayerTurn,
      pieces1: currentBoard.isPlayerTurn
          ? currentBoard.pieces1.pop(piece)
          : currentBoard.pieces1,
      pieces2: currentBoard.isPlayerTurn
          ? currentBoard.pieces2
          : currentBoard.pieces2.pop(piece),
      currentPiece: null,
      selectedPosition: null,
    );

    state = AsyncValue.data(updatedBoard);
  }

  void resetSelection() {
    final currentBoard = state.value;

    if (currentBoard != null) {
      final updatedBoard = currentBoard.copyWith(
        currentPiece: null,
        selectedPosition: null,
      );

      state = AsyncValue.data(updatedBoard);
    }
  }
}
