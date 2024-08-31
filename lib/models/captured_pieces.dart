import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shogi/models/shogi_piece.dart';

part 'captured_pieces.freezed.dart';

@freezed
class CapturedPieces with _$CapturedPieces {
  const CapturedPieces._();
  const factory CapturedPieces({
    required bool isOwner,
    required List<ShogiPiece> pieces,
  }) = _CapturedPieces;

  CapturedPieces add(ShogiPiece piece) {
    final updatedPiece = piece.copyWith(isOwner: isOwner);
    final updatedPieces = List<ShogiPiece>.from(pieces)..add(updatedPiece);
    return CapturedPieces(isOwner: isOwner, pieces: updatedPieces);
  }

  CapturedPieces pop(ShogiPiece piece) {
    final updatedPieces = List<ShogiPiece>.from(pieces)..remove(piece);
    return CapturedPieces(isOwner: isOwner, pieces: updatedPieces);
  }
}
