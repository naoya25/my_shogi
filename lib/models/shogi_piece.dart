import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shogi_piece.freezed.dart';
part 'shogi_piece.g.dart';

enum ShogiPieceType {
  king('王'),
  rook('飛'),
  bishop('角'),
  gold('金'),
  silver('銀'),
  knight('桂'),
  lance('香'),
  pawn('歩'),
  promotedRook('竜'),
  promotedBishop('馬'),
  promotedSilver('成銀'),
  promotedKnight('成桂'),
  promotedLance('成香'),
  promotedPawn('と');

  final String name;
  const ShogiPieceType(this.name);
}

@freezed
class ShogiPiece with _$ShogiPiece {
  const ShogiPiece._();
  const factory ShogiPiece({
    required ShogiPieceType type, // 駒の種類
    required String owner, // 駒の持ち主 (先手か後手)
    required bool isPromoted, // 成っているかどうか
  }) = _ShogiPiece;

  factory ShogiPiece.fromJson(Map<String, dynamic> json) =>
      _$ShogiPieceFromJson(json);

  // 駒の移動範囲
  List<Offset> moveOffsets() {
    const offsetMap = {
      ShogiPieceType.king: [
        Offset(0, 1),
        Offset(1, 1),
        Offset(1, 0),
        Offset(1, -1),
        Offset(0, -1),
        Offset(-1, -1),
        Offset(-1, 0),
        Offset(-1, 1),
      ],
      ShogiPieceType.rook: [
        Offset(0, 1),
        Offset(0, 2),
        Offset(0, 3),
        Offset(0, 4),
        Offset(0, 5),
        Offset(0, 6),
        Offset(0, 7),
        Offset(0, 8),
        Offset(0, -1),
        Offset(0, -2),
        Offset(0, -3),
        Offset(0, -4),
        Offset(0, -5),
        Offset(0, -6),
        Offset(0, -7),
        Offset(0, -8),
        Offset(1, 0),
        Offset(2, 0),
        Offset(3, 0),
        Offset(4, 0),
        Offset(5, 0),
        Offset(6, 0),
        Offset(7, 0),
        Offset(8, 0),
        Offset(-1, 0),
        Offset(-2, 0),
        Offset(-3, 0),
        Offset(-4, 0),
        Offset(-5, 0),
        Offset(-6, 0),
        Offset(-7, 0),
        Offset(-8, 0),
      ],
      ShogiPieceType.bishop: [
        Offset(1, 1),
        Offset(2, 2),
        Offset(3, 3),
        Offset(4, 4),
        Offset(5, 5),
        Offset(6, 6),
        Offset(7, 7),
        Offset(8, 8),
        Offset(1, -1),
        Offset(2, -2),
        Offset(3, -3),
        Offset(4, -4),
        Offset(5, -5),
        Offset(6, -6),
        Offset(7, -7),
        Offset(8, -8),
        Offset(-1, -1),
        Offset(-2, -2),
        Offset(-3, -3),
        Offset(-4, -4),
        Offset(-5, -5),
        Offset(-6, -6),
        Offset(-7, -7),
        Offset(-8, -8),
        Offset(-1, 1),
        Offset(-2, 2),
        Offset(-3, 3),
        Offset(-4, 4),
        Offset(-5, 5),
        Offset(-6, 6),
        Offset(-7, 7),
        Offset(-8, 8),
      ],
      ShogiPieceType.gold: [
        Offset(0, 1),
        Offset(1, 1),
        Offset(1, 0),
        Offset(0, -1),
        Offset(-1, 0),
        Offset(-1, 1),
      ],
      ShogiPieceType.silver: [
        Offset(0, 1),
        Offset(1, 1),
        Offset(-1, 1),
        Offset(1, -1),
        Offset(-1, -1),
      ],
      ShogiPieceType.knight: [
        Offset(-1, 2),
        Offset(1, 2),
      ],
      ShogiPieceType.lance: [
        Offset(0, 1),
        Offset(0, 2),
        Offset(0, 3),
        Offset(0, 4),
        Offset(0, 5),
        Offset(0, 6),
        Offset(0, 7),
        Offset(0, 8),
      ],
      ShogiPieceType.pawn: [
        Offset(0, 1),
      ],
    };

    if (type.name.startsWith('promoted')) {
      return offsetMap[ShogiPieceType.gold]!;
    } else {
      return offsetMap[type] ?? [];
    }
  }
}
