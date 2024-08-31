import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shogi/models/captured_pieces.dart';
import 'package:my_shogi/models/position.dart';
import 'package:my_shogi/models/shogi_piece.dart';
import 'package:my_shogi/utils/constant_boards.dart';

part 'board.freezed.dart';

@freezed
class Board with _$Board {
  const Board._();
  const factory Board({
    required List<List<ShogiPiece?>> grid,
    required bool isPlayerTurn,
    required bool? winner, // 詰んでいるか
    required CapturedPieces pieces1, // 先手の持ち駒
    required CapturedPieces pieces2, // 後手の持ち駒
    ShogiPiece? currentPiece,
    Position? selectedPosition,
  }) = _Board;

  static Board initialize() {
    return Board(
      grid: ConstantBoards.normalBoard
          .map((row) => List<ShogiPiece?>.from(row))
          .toList(),
      isPlayerTurn: true,
      winner: null,
      pieces1: const CapturedPieces(isOwner: true, pieces: []),
      pieces2: const CapturedPieces(isOwner: false, pieces: []),
    );
  }

  bool canMove(Position to) {
    if (selectedPosition == to) return false;
    if (isPlayerTurn == grid[to.y][to.x]?.isOwner) return false;

    if (currentPiece == null || selectedPosition == null) {
      return false;
    } else {
      return currentPiece!.canMove(selectedPosition!, to, grid);
    }
  }

  bool canPut(Position to) {
    if (currentPiece == null) {
      return false;
    } else {
      return currentPiece!.canPut(to, grid);
    }
  }
}
