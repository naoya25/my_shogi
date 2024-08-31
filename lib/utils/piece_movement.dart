import 'package:my_shogi/models/position.dart';
import 'package:my_shogi/models/shogi_piece.dart';

/// よく出てくる動きのみ共通化
class PieceMovement {
  static bool canPutBase(List<List<ShogiPiece?>> grid, Position position) {
    if (grid[position.y][position.x] == null) {
      return true;
    } else {
      return false;
    }
  }

  static bool linearMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> grid,
  ) {
    if (start.x == end.x) {
      int minY = start.y < end.y ? start.y : end.y;
      int maxY = start.y > end.y ? start.y : end.y;
      for (int y = minY + 1; y < maxY; y++) {
        if (grid[y][start.x] != null) {
          return false;
        }
      }
      return true;
    } else if (start.y == end.y) {
      int minX = start.x < end.x ? start.x : end.x;
      int maxX = start.x > end.x ? start.x : end.x;
      for (int x = minX + 1; x < maxX; x++) {
        if (grid[start.y][x] != null) {
          return false;
        }
      }
      return true;
    }
    return false;
  }

  static bool diagonalMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> grid,
  ) {
    if ((start.x - end.x).abs() == (start.y - end.y).abs()) {
      int xStep = start.x < end.x ? 1 : -1;
      int yStep = start.y < end.y ? 1 : -1;
      int x = start.x + xStep;
      int y = start.y + yStep;
      while (x != end.x && y != end.y) {
        if (grid[y][x] != null) {
          return false;
        }
        x += xStep;
        y += yStep;
      }
      return true;
    }
    return false;
  }

  static bool kingMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> grid,
  ) {
    int dx = (start.x - end.x).abs();
    int dy = (start.y - end.y).abs();
    return dx <= 1 && dy <= 1;
  }

  static bool goldMove(
    Position start,
    Position end,
    List<List<ShogiPiece?>> grid,
    bool isOwner,
  ) {
    int dx = (start.x - end.x).abs();
    int dy = end.y - start.y;
    if (isOwner) {
      return (dy.abs() <= 1 && dx <= 1) && (end.y <= start.y || dx == 0);
    } else {
      return (dy.abs() <= 1 && dx <= 1) && (end.y >= start.y || dx == 0);
    }
  }
}
