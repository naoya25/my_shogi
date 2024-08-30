// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardImpl _$$BoardImplFromJson(Map<String, dynamic> json) => _$BoardImpl(
      grid: (json['grid'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : ShogiPiece.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
      isPlayerTurn: json['isPlayerTurn'] as bool,
      winner: json['winner'] as bool?,
      player1CapturedPieces: (json['player1CapturedPieces'] as List<dynamic>)
          .map((e) => ShogiPiece.fromJson(e as Map<String, dynamic>))
          .toList(),
      player2CapturedPieces: (json['player2CapturedPieces'] as List<dynamic>)
          .map((e) => ShogiPiece.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPiece: json['currentPiece'] == null
          ? null
          : ShogiPiece.fromJson(json['currentPiece'] as Map<String, dynamic>),
      selectedPosition: json['selectedPosition'] == null
          ? null
          : Position.fromJson(json['selectedPosition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BoardImplToJson(_$BoardImpl instance) =>
    <String, dynamic>{
      'grid': instance.grid,
      'isPlayerTurn': instance.isPlayerTurn,
      'winner': instance.winner,
      'player1CapturedPieces': instance.player1CapturedPieces,
      'player2CapturedPieces': instance.player2CapturedPieces,
      'currentPiece': instance.currentPiece,
      'selectedPosition': instance.selectedPosition,
    };
