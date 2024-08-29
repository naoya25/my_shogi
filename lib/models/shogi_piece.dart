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
    required ShogiPieceType type, 
    required bool isOwner, // 先手: true, 後手: false
  }) = _ShogiPiece;

  factory ShogiPiece.fromJson(Map<String, dynamic> json) =>
      _$ShogiPieceFromJson(json);

  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    switch (type) {
      case ShogiPieceType.king:
        return _kingMove(start, end, board);
      case ShogiPieceType.rook:
        return _rookMove(start, end, board);
      case ShogiPieceType.bishop:
        return _bishopMove(start, end, board);
      case ShogiPieceType.gold:
        return _goldMove(start, end, board);
      case ShogiPieceType.silver:
        return _silverMove(start, end, board);
      case ShogiPieceType.knight:
        return _knightMove(start, end, board);
      case ShogiPieceType.lance:
        return _lanceMove(start, end, board);
      case ShogiPieceType.pawn:
        return _pawnMove(start, end, board);
      case ShogiPieceType.promotedRook:
        return _rookMove(start, end, board) || _kingMove(start, end, board);
      case ShogiPieceType.promotedBishop:
        return _bishopMove(start, end, board) || _kingMove(start, end, board);
      case ShogiPieceType.promotedSilver:
        return _goldMove(start, end, board);
      case ShogiPieceType.promotedKnight:
        return _goldMove(start, end, board);
      case ShogiPieceType.promotedLance:
        return _goldMove(start, end, board);
      case ShogiPieceType.promotedPawn:
        return _goldMove(start, end, board);
    }
  }

  bool linearMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    if (start.x == end.x) {
      int minY = start.y < end.y ? start.y : end.y;
      int maxY = start.y > end.y ? start.y : end.y;
      for (int y = minY + 1; y < maxY; y++) {
        if (board[start.x][y] != null) {
          return false;
        }
      }
      return true;
    } else if (start.y == end.y) {
      int minX = start.x < end.x ? start.x : end.x;
      int maxX = start.x > end.x ? start.x : end.x;
      for (int x = minX + 1; x < maxX; x++) {
        if (board[x][start.y] != null) {
          return false;
        }
      }
      return true;
    }
    return false;
  }

  // 斜めの動き（角行）
  bool diagonalMove(
      Position start, Position end, List<List<ShogiPiece?>> board) {
    if ((start.x - end.x).abs() == (start.y - end.y).abs()) {
      int xStep = start.x < end.x ? 1 : -1;
      int yStep = start.y < end.y ? 1 : -1;
      int x = start.x + xStep;
      int y = start.y + yStep;
      while (x != end.x && y != end.y) {
        if (board[x][y] != null) {
          return false;
        }
        x += xStep;
        y += yStep;
      }
      return true;
    }
    return false;
  }

  bool _kingMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    int dx = (start.x - end.x).abs();
    int dy = (start.y - end.y).abs();
    return dx <= 1 && dy <= 1;
  }

  bool _rookMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    return linearMove(start, end, board);
  }

  bool _bishopMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    return diagonalMove(start, end, board);
  }

  bool _goldMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    int dx = (start.x - end.x).abs();
    int dy = end.y - start.y;
    return (dy.abs() <= 1 && dx <= 1) && (end.y >= start.y || dx == 0);
  }

  bool _silverMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    int dx = (start.x - end.x).abs();
    int dy = end.y - start.y;

    return (dx == 1 && dy == 1) || // 斜め前方
        (dx == 0 && dy == 1) || // 前方直進
        (dx == 1 && dy == -1); // 斜め後方
  }

  bool _knightMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    int dx = end.x - start.x;
    int dy = end.y - start.y;
    return (dy == 2 && (dx == 1 || dx == -1)) && end.y > start.y;
  }

  bool _lanceMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    return linearMove(start, end, board) && end.y > start.y;
  }

  bool _pawnMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    return (start.x == end.x && end.y == start.y + 1);
  }
}

@freezed
class Position with _$Position {
  const factory Position({
    required int x,
    required int y,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}
