// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shogi_piece.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShogiPieceImpl _$$ShogiPieceImplFromJson(Map<String, dynamic> json) =>
    _$ShogiPieceImpl(
      id: json['id'] as String,
      isKing: json['isKing'] as bool,
      type: $enumDecode(_$ShogiPieceTypeEnumMap, json['type']),
      isOwner: json['isOwner'] as bool,
    );

Map<String, dynamic> _$$ShogiPieceImplToJson(_$ShogiPieceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isKing': instance.isKing,
      'type': _$ShogiPieceTypeEnumMap[instance.type]!,
      'isOwner': instance.isOwner,
    };

const _$ShogiPieceTypeEnumMap = {
  ShogiPieceType.king: 'king',
  ShogiPieceType.rook: 'rook',
  ShogiPieceType.bishop: 'bishop',
  ShogiPieceType.gold: 'gold',
  ShogiPieceType.silver: 'silver',
  ShogiPieceType.knight: 'knight',
  ShogiPieceType.lance: 'lance',
  ShogiPieceType.pawn: 'pawn',
  ShogiPieceType.promotedRook: 'promotedRook',
  ShogiPieceType.promotedBishop: 'promotedBishop',
  ShogiPieceType.promotedSilver: 'promotedSilver',
  ShogiPieceType.promotedKnight: 'promotedKnight',
  ShogiPieceType.promotedLance: 'promotedLance',
  ShogiPieceType.promotedPawn: 'promotedPawn',
};

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
