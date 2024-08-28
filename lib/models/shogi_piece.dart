import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shogi_piece.freezed.dart';
part 'shogi_piece.g.dart';

enum ShogiPieceType {
  king, // 王
  rook, // 飛車
  bishop, // 角行
  gold, // 金将
  silver, // 銀将
  knight, // 桂馬
  lance, // 香車
  pawn, // 歩兵
  promotedRook, // 竜王 (成り飛車)
  promotedBishop, // 竜馬 (成り角)
  promotedSilver, // 成り銀
  promotedKnight, // 成り桂
  promotedLance, // 成り香
  promotedPawn; // と金 (成り歩)

  // 駒の名前を返すプロパティ
  String get name {
    switch (this) {
      case ShogiPieceType.king:
        return '王';
      case ShogiPieceType.rook:
        return '飛';
      case ShogiPieceType.bishop:
        return '角';
      case ShogiPieceType.gold:
        return '金';
      case ShogiPieceType.silver:
        return '銀';
      case ShogiPieceType.knight:
        return '桂';
      case ShogiPieceType.lance:
        return '香';
      case ShogiPieceType.pawn:
        return '歩';
      case ShogiPieceType.promotedRook:
        return '竜';
      case ShogiPieceType.promotedBishop:
        return '馬';
      case ShogiPieceType.promotedSilver:
        return '成銀';
      case ShogiPieceType.promotedKnight:
        return '成桂';
      case ShogiPieceType.promotedLance:
        return '成香';
      case ShogiPieceType.promotedPawn:
        return 'と';
      default:
        return '';
    }
  }
}

@freezed
class ShogiPiece with _$ShogiPiece {
  const factory ShogiPiece({
    required ShogiPieceType type, // 駒の種類
    required String owner, // 駒の持ち主 (先手か後手)
    required bool isPromoted, // 成っているかどうか
  }) = _ShogiPiece;

  factory ShogiPiece.fromJson(Map<String, dynamic> json) =>
      _$ShogiPieceFromJson(json);
}
