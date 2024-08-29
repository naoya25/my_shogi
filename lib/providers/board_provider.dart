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

  void movePiece(ShogiPiece piece, int x, int y) {
    // final currentBoard = state.value;
    // if (currentBoard != null) {
    //   final updatedBoard = currentBoard.copyWith(
    //     currentPiece: piece,
    //     selectedPositionX: x,
    //     selectedPositionY: y,
    //   );
    //   state = AsyncValue.data(updatedBoard);
    // }
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
