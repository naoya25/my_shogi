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
    required String id,
    required ShogiPieceType type,
    required bool isOwner, // 先手: true, 後手: false
  }) = _ShogiPiece;

  factory ShogiPiece.fromJson(Map<String, dynamic> json) =>
      _$ShogiPieceFromJson(json);

  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    if (start == end) return false;
    if (isOwner == board[end.y][end.x]?.isOwner) return false;

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

  bool canPut(Position position, List<List<ShogiPiece?>> board) {
    switch (type) {
      case ShogiPieceType.king:
      case ShogiPieceType.rook:
      case ShogiPieceType.bishop:
      case ShogiPieceType.gold:
      case ShogiPieceType.silver:
        if (board[position.y][position.x] == null) {
          return true;
        } else {
          return false;
        }
      case ShogiPieceType.knight:
        if (board[position.y][position.x] == null) {
          if (isOwner && (position.y == 0 || position.y == 1)) return false;
          if (!isOwner && (position.y == 7 || position.y == 8)) return false;
          return true;
        } else {
          return false;
        }
      case ShogiPieceType.lance:
        if (board[position.y][position.x] == null) {
          if (isOwner && position.y == 0) return false;
          if (!isOwner && position.y == 8) return false;
          return true;
        } else {
          return false;
        }
      case ShogiPieceType.pawn:
        if (board[position.y][position.x] == null) {
          if (isOwner && position.y == 0) return false;
          if (!isOwner && position.y == 8) return false;

          for (int y = 0; y < 9; y++) {
            if (board[y][position.x] != null &&
                board[y][position.x]!.type == ShogiPieceType.pawn &&
                board[y][position.x]!.isOwner == isOwner) {
              return false;
            }
          }
          return true;
        } else {
          return false;
        }
      case ShogiPieceType.promotedRook:
      case ShogiPieceType.promotedBishop:
      case ShogiPieceType.promotedSilver:
      case ShogiPieceType.promotedKnight:
      case ShogiPieceType.promotedLance:
      case ShogiPieceType.promotedPawn:
        return false;
    }
  }

  bool _linearMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    if (start.x == end.x) {
      int minY = start.y < end.y ? start.y : end.y;
      int maxY = start.y > end.y ? start.y : end.y;
      for (int y = minY + 1; y < maxY; y++) {
        if (board[y][start.x] != null) {
          return false;
        }
      }
      return true;
    } else if (start.y == end.y) {
      int minX = start.x < end.x ? start.x : end.x;
      int maxX = start.x > end.x ? start.x : end.x;
      for (int x = minX + 1; x < maxX; x++) {
        if (board[start.y][x] != null) {
          return false;
        }
      }
      return true;
    }
    return false;
  }

  bool _diagonalMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    if ((start.x - end.x).abs() == (start.y - end.y).abs()) {
      int xStep = start.x < end.x ? 1 : -1;
      int yStep = start.y < end.y ? 1 : -1;
      int x = start.x + xStep;
      int y = start.y + yStep;
      while (x != end.x && y != end.y) {
        if (board[y][x] != null) {
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
    return _linearMove(start, end, board);
  }

  bool _bishopMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    return _diagonalMove(start, end, board);
  }

  bool _goldMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    int dx = (start.x - end.x).abs();
    int dy = end.y - start.y;
    if (isOwner) {
      return (dy.abs() <= 1 && dx <= 1) && (end.y <= start.y || dx == 0);
    } else {
      return (dy.abs() <= 1 && dx <= 1) && (end.y >= start.y || dx == 0);
    }
  }

  bool _silverMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    int dx = (start.x - end.x).abs();
    int dy = isOwner ? start.y - end.y : end.y - start.y;

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
    int dy = isOwner ? start.y - end.y : end.y - start.y;
    if (isOwner) {
      return (dy == 2 && (dx == 1 || dx == -1)) && end.y < start.y;
    } else {
      return (dy == 2 && (dx == 1 || dx == -1)) && end.y > start.y;
    }
  }

  bool _lanceMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    if (isOwner) {
      return _linearMove(start, end, board) && end.y < start.y;
    } else {
      return _linearMove(start, end, board) && end.y > start.y;
    }
  }

  bool _pawnMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> board,
  ) {
    int dy = isOwner ? -1 : 1;
    return (start.x == end.x && end.y == start.y + dy);
  }

  ShogiPieceType? getPromotedType() {
    switch (type) {
      case ShogiPieceType.king:
      case ShogiPieceType.gold:
      case ShogiPieceType.promotedRook:
      case ShogiPieceType.promotedBishop:
      case ShogiPieceType.promotedSilver:
      case ShogiPieceType.promotedKnight:
      case ShogiPieceType.promotedLance:
      case ShogiPieceType.promotedPawn:
        return null;
      case ShogiPieceType.rook:
        return ShogiPieceType.promotedRook;
      case ShogiPieceType.bishop:
        return ShogiPieceType.promotedBishop;
      case ShogiPieceType.silver:
        return ShogiPieceType.promotedSilver;
      case ShogiPieceType.knight:
        return ShogiPieceType.promotedKnight;
      case ShogiPieceType.lance:
        return ShogiPieceType.promotedLance;
      case ShogiPieceType.pawn:
        return ShogiPieceType.promotedPawn;
    }
  }

  ShogiPieceType? getDemotedType() {
    switch (type) {
      case ShogiPieceType.king:
      case ShogiPieceType.gold:
      case ShogiPieceType.rook:
      case ShogiPieceType.bishop:
      case ShogiPieceType.silver:
      case ShogiPieceType.knight:
      case ShogiPieceType.lance:
      case ShogiPieceType.pawn:
        return null;
      case ShogiPieceType.promotedRook:
        return ShogiPieceType.rook;
      case ShogiPieceType.promotedBishop:
        return ShogiPieceType.bishop;
      case ShogiPieceType.promotedSilver:
        return ShogiPieceType.silver;
      case ShogiPieceType.promotedKnight:
        return ShogiPieceType.knight;
      case ShogiPieceType.promotedLance:
        return ShogiPieceType.lance;
      case ShogiPieceType.promotedPawn:
        return ShogiPieceType.pawn;
    }
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
