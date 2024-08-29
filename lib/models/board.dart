import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shogi/models/shogi_piece.dart';

part 'board.freezed.dart';
part 'board.g.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required List<List<ShogiPiece?>> grid, // 盤面
    required String playerTurn, // 先手番か後手番か
    required bool isGameOver, // 詰んでいるか
    required List<ShogiPiece> player1CapturedPieces, // 先手の持ち駒
    required List<ShogiPiece> player2CapturedPieces, // 後手の持ち駒
    ShogiPiece? currentPiece, // 選択された駒
    int? selectedPositionX, // 選択された駒の位置
    int? selectedPositionY, // 選択された駒の位置
  }) = _Board;

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);

  static Board initialize() {
    return Board(
      grid: [
        [
          const ShogiPiece(
              type: ShogiPieceType.lance, owner: "後手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.knight, owner: "後手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.silver, owner: "後手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.gold, owner: "後手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.king, owner: "後手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.gold, owner: "後手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.silver, owner: "後手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.knight, owner: "後手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.lance, owner: "後手", isPromoted: false),
        ],
        [
          null,
          const ShogiPiece(
              type: ShogiPieceType.rook, owner: "後手", isPromoted: false),
          null,
          null,
          null,
          null,
          null,
          const ShogiPiece(
              type: ShogiPieceType.bishop, owner: "後手", isPromoted: false),
          null
        ],
        List.generate(
            9,
            (_) => const ShogiPiece(
                type: ShogiPieceType.pawn, owner: "後手", isPromoted: false)),
        List.generate(9, (_) => null),
        List.generate(9, (_) => null),
        List.generate(9, (_) => null),
        List.generate(
            9,
            (_) => const ShogiPiece(
                type: ShogiPieceType.pawn, owner: "先手", isPromoted: false)),
        [
          null,
          const ShogiPiece(
              type: ShogiPieceType.bishop, owner: "先手", isPromoted: false),
          null,
          null,
          null,
          null,
          null,
          const ShogiPiece(
              type: ShogiPieceType.rook, owner: "先手", isPromoted: false),
          null
        ],
        [
          const ShogiPiece(
              type: ShogiPieceType.lance, owner: "先手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.knight, owner: "先手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.silver, owner: "先手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.gold, owner: "先手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.king, owner: "先手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.gold, owner: "先手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.silver, owner: "先手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.knight, owner: "先手", isPromoted: false),
          const ShogiPiece(
              type: ShogiPieceType.lance, owner: "先手", isPromoted: false),
        ],
      ],
      playerTurn: '先手',
      isGameOver: false,
      player1CapturedPieces: [],
      player2CapturedPieces: [],
    );
  }
}
