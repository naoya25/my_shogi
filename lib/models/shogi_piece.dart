import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shogi_piece.freezed.dart';
part 'shogi_piece.g.dart';

abstract class ShogiPiece {
  final String name;

  ShogiPiece(this.name);

  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board);

  // 共通の動き（王、金の動き）
  bool kingMove(Position start, Position end) {
    int dx = (start.x - end.x).abs();
    int dy = (start.y - end.y).abs();
    return dx <= 1 && dy <= 1;
  }

  bool goldMove(Position start, Position end) {
    int dx = (start.x - end.x).abs();
    int dy = end.y - start.y;
    return (dy.abs() <= 1 && dx <= 1) && (end.y >= start.y || dx == 0);
  }

  // 直線の動き（飛車、香車）
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
  bool diagonalMove(Position start, Position end, List<List<ShogiPiece?>> board) {
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
}

class Position {
  final int x;
  final int y;

  Position(this.x, this.y);
}

class King extends ShogiPiece {
  King() : super("王");

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return kingMove(start, end) && start != end;
  }
}

class Rook extends ShogiPiece {
  Rook() : super("飛車");

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return linearMove(start, end, board);
  }
}

class PromotedRook extends Rook {
  PromotedRook() : super();

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return linearMove(start, end, board) || kingMove(start, end);
  }
}

class Bishop extends ShogiPiece {
  Bishop() : super("角");

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return diagonalMove(start, end, board);
  }
}

class PromotedBishop extends Bishop {
  PromotedBishop() : super();

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return diagonalMove(start, end, board) || kingMove(start, end);
  }
}

class Knight extends ShogiPiece {
  Knight() : super("桂");

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    int dx = end.x - start.x;
    int dy = end.y - start.y;
    return (dy == 2 && (dx == 1 || dx == -1)) && end.y > start.y;
  }
}

class GoldGeneral extends ShogiPiece {
  GoldGeneral() : super("金");

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return goldMove(start, end);
  }
}

class SilverGeneral extends ShogiPiece {
  SilverGeneral() : super("銀");

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    int dx = (start.x - end.x).abs();
    int dy = end.y - start.y;

    return (dx == 1 && dy == 1) || // 斜め前方
           (dx == 0 && dy == 1) || // 前方直進
           (dx == 1 && dy == -1);  // 斜め後方
  }
}

class Lance extends ShogiPiece {
  Lance() : super("香");

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return linearMove(start, end, board) && end.y > start.y;
  }
}

class Pawn extends ShogiPiece {
  Pawn() : super("歩");

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return (start.x == end.x && end.y == start.y + 1);
  }
}

class PromotedPawn extends ShogiPiece {
  PromotedPawn() : super('と');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return goldMove(start, end);
  }
}

class PromotedLance extends ShogiPiece {
  PromotedLance() : super('成香');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return goldMove(start, end);
  }
}

class PromotedKnight extends ShogiPiece {
  PromotedKnight() : super('成桂');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return goldMove(start, end);
  }
}

class PromotedSilverGeneral extends ShogiPiece {
  PromotedSilverGeneral() : super('成銀');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> board) {
    return goldMove(start, end);
  }
}
