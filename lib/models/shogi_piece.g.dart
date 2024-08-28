// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shogi_piece.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShogiPieceImpl _$$ShogiPieceImplFromJson(Map<String, dynamic> json) =>
    _$ShogiPieceImpl(
      type: $enumDecode(_$ShogiPieceTypeEnumMap, json['type']),
      owner: json['owner'] as String,
      isPromoted: json['isPromoted'] as bool,
    );

Map<String, dynamic> _$$ShogiPieceImplToJson(_$ShogiPieceImpl instance) =>
    <String, dynamic>{
      'type': _$ShogiPieceTypeEnumMap[instance.type]!,
      'owner': instance.owner,
      'isPromoted': instance.isPromoted,
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
