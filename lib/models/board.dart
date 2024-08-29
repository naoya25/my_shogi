import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shogi/models/shogi_piece.dart';

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
      grid: [
        [
          const ShogiPiece(type: ShogiPieceType.lance, isOwner: false),
          const ShogiPiece(type: ShogiPieceType.knight, isOwner: false),
          const ShogiPiece(type: ShogiPieceType.silver, isOwner: false),
          const ShogiPiece(type: ShogiPieceType.gold, isOwner: false),
          const ShogiPiece(type: ShogiPieceType.king, isOwner: false),
          const ShogiPiece(type: ShogiPieceType.gold, isOwner: false),
          const ShogiPiece(type: ShogiPieceType.silver, isOwner: false),
          const ShogiPiece(type: ShogiPieceType.knight, isOwner: false),
          const ShogiPiece(type: ShogiPieceType.lance, isOwner: false),
        ],
        [
          null,
          const ShogiPiece(type: ShogiPieceType.rook, isOwner: false),
          null,
          null,
          null,
          null,
          null,
          const ShogiPiece(type: ShogiPieceType.bishop, isOwner: false),
          null
        ],
        List.generate(
          9,
          (_) => const ShogiPiece(type: ShogiPieceType.pawn, isOwner: false),
        ),
        List.generate(9, (_) => null),
        List.generate(9, (_) => null),
        List.generate(9, (_) => null),
        List.generate(
          9,
          (_) => const ShogiPiece(type: ShogiPieceType.pawn, isOwner: true),
        ),
        [
          null,
          const ShogiPiece(type: ShogiPieceType.bishop, isOwner: true),
          null,
          null,
          null,
          null,
          null,
          const ShogiPiece(type: ShogiPieceType.rook, isOwner: true),
          null
        ],
        [
          const ShogiPiece(type: ShogiPieceType.lance, isOwner: true),
          const ShogiPiece(type: ShogiPieceType.knight, isOwner: true),
          const ShogiPiece(type: ShogiPieceType.silver, isOwner: true),
          const ShogiPiece(type: ShogiPieceType.gold, isOwner: true),
          const ShogiPiece(type: ShogiPieceType.king, isOwner: true),
          const ShogiPiece(type: ShogiPieceType.gold, isOwner: true),
          const ShogiPiece(type: ShogiPieceType.silver, isOwner: true),
          const ShogiPiece(type: ShogiPieceType.knight, isOwner: true),
          const ShogiPiece(type: ShogiPieceType.lance, isOwner: true),
        ],
      ],
      isPlayerTurn: true,
      isGameOver: false,
      player1CapturedPieces: [],
      player2CapturedPieces: [],
    );
  }
}
