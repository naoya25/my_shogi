import 'package:my_shogi/models/board.dart';
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
    final movingPiece = isPromote
        ? currentBoard.currentPiece!.getPromoted(currentBoard.isPlayerTurn)!
        : currentBoard.currentPiece!;

    // 移動先のマス
    final targetPiece = currentBoard.grid[to.y][to.x];

    List<ShogiPiece> capturedPieces = currentBoard.isPlayerTurn
        ? List<ShogiPiece>.from(currentBoard.player1CapturedPieces)
        : List<ShogiPiece>.from(currentBoard.player2CapturedPieces);

    if (targetPiece != null &&
        targetPiece.isOwner == currentBoard.currentPiece!.isOwner) {
      resetSelection();
      return;
    } else if (targetPiece != null &&
        targetPiece.isOwner != currentBoard.currentPiece!.isOwner) {
      final demotedPiece = targetPiece.getDemoted(currentBoard.isPlayerTurn);
      capturedPieces.add(
        demotedPiece ??
            targetPiece.copyWith(isOwner: currentBoard.isPlayerTurn),
      );
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
      player1CapturedPieces: currentBoard.isPlayerTurn
          ? capturedPieces
          : currentBoard.player1CapturedPieces,
      player2CapturedPieces: currentBoard.isPlayerTurn
          ? currentBoard.player2CapturedPieces
          : capturedPieces,
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

    // 手持ちから削除
    List<ShogiPiece> capturedPieces = currentBoard.isPlayerTurn
        ? List<ShogiPiece>.from(currentBoard.player1CapturedPieces)
        : List<ShogiPiece>.from(currentBoard.player2CapturedPieces);
    capturedPieces.remove(piece);

    final newGrid = List<List<ShogiPiece?>>.from(currentBoard.grid);
    newGrid[position.y][position.x] = piece;

    final updatedBoard = currentBoard.copyWith(
      grid: newGrid,
      isPlayerTurn: !currentBoard.isPlayerTurn,
      player1CapturedPieces: currentBoard.isPlayerTurn
          ? capturedPieces
          : currentBoard.player1CapturedPieces,
      player2CapturedPieces: currentBoard.isPlayerTurn
          ? currentBoard.player2CapturedPieces
          : capturedPieces,
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
