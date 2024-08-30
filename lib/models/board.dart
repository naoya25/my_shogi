import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shogi/models/shogi_piece.dart';
import 'package:my_shogi/utils/constant_boards.dart';

part 'board.freezed.dart';
part 'board.g.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required List<List<ShogiPiece?>> grid,
    required bool isPlayerTurn,
    required bool? winner, // 詰んでいるか
    required List<ShogiPiece> player1CapturedPieces, // 先手の持ち駒
    required List<ShogiPiece> player2CapturedPieces, // 後手の持ち駒
    ShogiPiece? currentPiece,
    Position? selectedPosition,
  }) = _Board;

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);

  static Board initialize() {
    return Board(
      grid: ConstantBoards.normalBoard,
      isPlayerTurn: true,
      winner: null,
      player1CapturedPieces: [],
      player2CapturedPieces: [],
    );
  }
}


// class ShogiMovement {
//   final Board board;

//   ShogiMovement(this.board);

//   bool canMove(Position end) {
//     if (board.currentPiece == null || board.selectedPosition == null) {
//       return false;
//     }

//     return board.currentPiece!.canMove(board.selectedPosition!, end, board.grid);
//   }

//   bool canPut(Position position) {
//     if (board.currentPiece == null) {
//       return false;
//     }

//     return board.currentPiece!.canPut(position, board.grid, board.isPlayerTurn);
//   }
// }
