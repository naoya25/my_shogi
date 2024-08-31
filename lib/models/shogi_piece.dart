import 'package:my_shogi/models/position.dart';
import 'package:my_shogi/utils/piece_movement.dart';

abstract class ShogiPiece {
  final String id;
  final String name;
  final bool isKing;
  final bool isOwner;
  final bool isPromoted;

  ShogiPiece({
    required this.id,
    required this.name,
    required this.isKing,
    required this.isOwner,
    required this.isPromoted,
  });

  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid);
  bool canPut(Position position, List<List<ShogiPiece?>> grid);
  ShogiPiece? promotePiece() => null;

  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return this;
  }
}

class King extends ShogiPiece {
  King({
    required super.id,
    required super.isOwner,
    super.isKing = true,
    super.isPromoted = false,
  }) : super(name: isOwner ? '玉' : '王');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.kingMove(start, end, grid);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return King(
      id: id,
      isOwner: isOwner ?? this.isOwner,
      isKing: isKing,
      isPromoted: isPromoted ?? this.isPromoted,
    );
  }
}

class Rook extends ShogiPiece {
  Rook({
    required super.id,
    required super.isOwner,
    super.isKing = false,
    super.isPromoted = false,
  }) : super(name: isPromoted ? '竜' : '飛');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    if (isPromoted) {
      return PieceMovement.kingMove(start, end, grid);
    }
    return PieceMovement.linearMove(start, end, grid);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    if (isPromoted) return false;
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? promotePiece() {
    if (isPromoted) return null;
    return Rook(
      id: id,
      isOwner: isOwner,
      isKing: isKing,
      isPromoted: true,
    );
  }

  @override
  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return Rook(
      id: id,
      isOwner: isOwner ?? this.isOwner,
      isKing: isKing,
      isPromoted: isPromoted ?? this.isPromoted,
    );
  }
}

class Bishop extends ShogiPiece {
  Bishop({
    required super.id,
    required super.isOwner,
    super.isKing = false,
    super.isPromoted = false,
  }) : super(name: isPromoted ? '馬' : '角');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    if (isPromoted) {
      return PieceMovement.kingMove(start, end, grid);
    }
    return PieceMovement.diagonalMove(start, end, grid);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    if (isPromoted) return false;
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? promotePiece() {
    if (isPromoted) return null;
    return Bishop(
      id: id,
      isOwner: isOwner,
      isKing: isKing,
      isPromoted: true,
    );
  }

  @override
  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return Bishop(
      id: id,
      isOwner: isOwner ?? this.isOwner,
      isKing: isKing,
      isPromoted: isPromoted ?? this.isPromoted,
    );
  }
}

class Gold extends ShogiPiece {
  Gold({
    required super.id,
    required super.isOwner,
    super.isKing = false,
    super.isPromoted = false,
  }) : super(name: '金');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.goldMove(start, end, grid, isOwner);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return Gold(
      id: id,
      isOwner: isOwner ?? this.isOwner,
      isKing: isKing,
      isPromoted: isPromoted ?? this.isPromoted,
    );
  }
}

class Silver extends ShogiPiece {
  Silver({
    required super.id,
    required super.isOwner,
    super.isKing = false,
    super.isPromoted = false,
  }) : super(name: isPromoted ? '成銀' : '銀');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    if (isPromoted) {
      return PieceMovement.goldMove(start, end, grid, isOwner);
    } else {
      int dx = (start.x - end.x).abs();
      int dy = isOwner ? start.y - end.y : end.y - start.y;

      return (dx == 1 && dy == 1) ||
          (dx == 0 && dy == 1) ||
          (dx == 1 && dy == -1);
    }
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    if (isPromoted) return false;
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? promotePiece() {
    if (isPromoted) return null;
    return Silver(
      id: id,
      isOwner: isOwner,
      isKing: isKing,
      isPromoted: true,
    );
  }

  @override
  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return Silver(
      id: id,
      isOwner: isOwner ?? this.isOwner,
      isKing: isKing,
      isPromoted: isPromoted ?? this.isPromoted,
    );
  }
}

class Knight extends ShogiPiece {
  Knight({
    required super.id,
    required super.isOwner,
    super.isKing = false,
    super.isPromoted = false,
  }) : super(name: isPromoted ? '成桂' : '桂');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    if (isPromoted) {
      return PieceMovement.goldMove(start, end, grid, isOwner);
    } else {
      int dx = end.x - start.x;
      int dy = isOwner ? start.y - end.y : end.y - start.y;
      if (isOwner) {
        return (dy == 2 && (dx == 1 || dx == -1)) && end.y < start.y;
      } else {
        return (dy == 2 && (dx == 1 || dx == -1)) && end.y > start.y;
      }
    }
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    if (isPromoted) return false;
    if (isOwner && (position.y == 0 || position.y == 1)) return false;
    if (!isOwner && (position.y == 7 || position.y == 8)) return false;
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? promotePiece() {
    if (isPromoted) return null;
    return Knight(
      id: id,
      isOwner: isOwner,
      isKing: isKing,
      isPromoted: true,
    );
  }

  @override
  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return Knight(
      id: id,
      isOwner: isOwner ?? this.isOwner,
      isKing: isKing,
      isPromoted: isPromoted ?? this.isPromoted,
    );
  }
}

class Lance extends ShogiPiece {
  Lance({
    required super.id,
    required super.isOwner,
    super.isKing = false,
    super.isPromoted = false,
  }) : super(name: isPromoted ? '成香' : '香');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    if (isOwner) {
      return PieceMovement.linearMove(start, end, grid) && end.y < start.y;
    } else {
      return PieceMovement.linearMove(start, end, grid) && end.y > start.y;
    }
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    if (isPromoted) return false;
    if (isOwner && position.y == 0) return false;
    if (!isOwner && position.y == 8) return false;
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? promotePiece() {
    if (isPromoted) return null;
    return Lance(
      id: id,
      isOwner: isOwner,
      isKing: isKing,
      isPromoted: true,
    );
  }

  @override
  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return Lance(
      id: id,
      isOwner: isOwner ?? this.isOwner,
      isKing: isKing,
      isPromoted: isPromoted ?? this.isPromoted,
    );
  }
}

class Pawn extends ShogiPiece {
  Pawn({
    required super.id,
    required super.isOwner,
    super.isKing = false,
    super.isPromoted = false,
  }) : super(name: isPromoted ? 'と' : '歩');

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    int dy = isOwner ? -1 : 1;
    return (start.x == end.x && end.y == start.y + dy);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    if (isOwner && position.y == 0) return false;
    if (!isOwner && position.y == 8) return false;

    for (int y = 0; y < 9; y++) {
      if (grid[y][position.x] != null &&
          grid[y][position.x]! is Pawn &&
          grid[y][position.x]!.isOwner == isOwner) {
        return false;
      }
    }
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? promotePiece() {
    if (isPromoted) return null;
    return Pawn(
      id: id,
      isOwner: isOwner,
      isKing: isKing,
      isPromoted: true,
    );
  }

  @override
  ShogiPiece copyWith({
    bool? isOwner,
    bool? isPromoted,
  }) {
    return Pawn(
      id: id,
      isOwner: isOwner ?? this.isOwner,
      isKing: isKing,
      isPromoted: isPromoted ?? this.isPromoted,
    );
  }
}
