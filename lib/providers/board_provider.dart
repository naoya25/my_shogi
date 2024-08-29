import 'package:my_shogi/models/board.dart';
import 'package:my_shogi/models/shogi_piece.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'board_provider.g.dart';

@riverpod
class BoardNotifier extends _$BoardNotifier {
  @override
  FutureOr<Board> build() async {
    return Board.initialize();
  }

  void selectPiece(ShogiPiece piece, Position position) {
    final currentBoard = state.value;
    if (currentBoard != null) {
      final updatedBoard = currentBoard.copyWith(
        currentPiece: piece,
        selectedPosition: position,
      );
      state = AsyncValue.data(updatedBoard);
    }
  }

  void movePiece(ShogiPiece piece, Position before, Position after) {
    final currentBoard = state.value;

    if (currentBoard == null ||
        currentBoard.isPlayerTurn != piece.isOwner ||
        !piece.canMove(before, after, currentBoard.grid)) {
      resetSelection();
      return;
    }

    // 移動先のマス
    final targetPiece = currentBoard.grid[after.y][after.x];

    List<ShogiPiece> capturedPieces = currentBoard.isPlayerTurn
        ? List<ShogiPiece>.from(currentBoard.player1CapturedPieces)
        : List<ShogiPiece>.from(currentBoard.player2CapturedPieces);

    if (targetPiece != null && targetPiece.isOwner == piece.isOwner) {
      resetSelection();
      return;
    } else if (targetPiece != null && targetPiece.isOwner != piece.isOwner) {
      capturedPieces.add(targetPiece.copyWith(isOwner: !targetPiece.isOwner));
    }

    final newGrid = List<List<ShogiPiece?>>.from(currentBoard.grid);
    newGrid[before.y][before.x] = null;
    newGrid[after.y][after.x] = piece;

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
