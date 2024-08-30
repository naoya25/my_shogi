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
    required bool isGameOver, // 詰んでいるか
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
      isGameOver: false,
      player1CapturedPieces: [],
      player2CapturedPieces: [],
    );
  }
}
