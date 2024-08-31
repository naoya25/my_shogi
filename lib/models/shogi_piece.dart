import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shogi/models/position.dart';
import 'package:my_shogi/utils/piece_movement.dart';

part 'shogi_piece.freezed.dart';

abstract class ShogiPiece {
  final String id;
  final String name;
  final bool isKing;
  final bool isOwner;

  ShogiPiece(this.id, this.name, this.isKing, this.isOwner);

  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid);
  bool canPut(Position position, List<List<ShogiPiece?>> grid);
  ShogiPiece? getPromoted(bool isCurrentOwner);
  ShogiPiece? getDemoted(bool isCurrentOwner);
}

@freezed
class King with _$King implements ShogiPiece {
  const King._();

  factory King({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _King;

  @override
  String get name => isOwner ? '玉' : '王';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.kingMove(start, end, grid);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return null;
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return null;
  }
}

@freezed
class Rook with _$Rook implements ShogiPiece {
  const Rook._();

  factory Rook({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _Rook;

  @override
  String get name => '飛';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.linearMove(start, end, grid);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return PromotedRook(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return null;
  }
}

@freezed
class Bishop with _$Bishop implements ShogiPiece {
  const Bishop._();

  factory Bishop({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _Bishop;

  @override
  String get name => '角';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.diagonalMove(start, end, grid);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return PromotedBishop(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return null;
  }
}

@freezed
class Gold with _$Gold implements ShogiPiece {
  const Gold._();

  factory Gold({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _Gold;

  @override
  String get name => '金';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.goldMove(start, end, grid, isOwner);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return null;
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return null;
  }
}

@freezed
class Silver with _$Silver implements ShogiPiece {
  const Silver._();

  factory Silver({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _Silver;

  @override
  String get name => '銀';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    int dx = (start.x - end.x).abs();
    int dy = isOwner ? start.y - end.y : end.y - start.y;

    return (dx == 1 && dy == 1) ||
        (dx == 0 && dy == 1) ||
        (dx == 1 && dy == -1);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return PromotedSilver(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return null;
  }
}

@freezed
class Knight with _$Knight implements ShogiPiece {
  const Knight._();

  factory Knight({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _Knight;

  @override
  String get name => '桂';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    int dx = end.x - start.x;
    int dy = isOwner ? start.y - end.y : end.y - start.y;
    if (isOwner) {
      return (dy == 2 && (dx == 1 || dx == -1)) && end.y < start.y;
    } else {
      return (dy == 2 && (dx == 1 || dx == -1)) && end.y > start.y;
    }
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    if (isOwner && (position.y == 0 || position.y == 1)) return false;
    if (!isOwner && (position.y == 7 || position.y == 8)) return false;
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return PromotedKnight(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return null;
  }
}

@freezed
class Lance with _$Lance implements ShogiPiece {
  const Lance._();

  factory Lance({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _Lance;

  @override
  String get name => '香';

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
    if (isOwner && position.y == 0) return false;
    if (!isOwner && position.y == 8) return false;
    return PieceMovement.canPutBase(grid, position);
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return PromotedLance(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return null;
  }
}

@freezed
class Pawn with _$Pawn implements ShogiPiece {
  const Pawn._();

  factory Pawn({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _Pawn;

  @override
  String get name => '歩';

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
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return PromotedPawn(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return null;
  }
}

@freezed
class PromotedRook with _$PromotedRook implements ShogiPiece {
  const PromotedRook._();

  factory PromotedRook({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _PromotedRook;

  @override
  String get name => '竜';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.linearMove(start, end, grid) ||
        PieceMovement.kingMove(start, end, grid);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return false;
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return null;
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return Rook(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }
}

@freezed
class PromotedBishop with _$PromotedBishop implements ShogiPiece {
  const PromotedBishop._();

  factory PromotedBishop({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _PromotedBishop;

  @override
  String get name => '馬';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.diagonalMove(start, end, grid) ||
        PieceMovement.kingMove(start, end, grid);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return false;
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return null;
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return Bishop(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }
}

@freezed
class PromotedSilver with _$PromotedSilver implements ShogiPiece {
  const PromotedSilver._();

  factory PromotedSilver({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _PromotedSilver;

  @override
  String get name => '成銀';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.goldMove(start, end, grid, isOwner);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return false;
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return null;
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return Silver(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }
}

@freezed
class PromotedKnight with _$PromotedKnight implements ShogiPiece {
  const PromotedKnight._();

  factory PromotedKnight({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _PromotedKnight;

  @override
  String get name => '成桂';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.goldMove(start, end, grid, isOwner);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return false;
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return null;
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return Knight(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }
}

@freezed
class PromotedLance with _$PromotedLance implements ShogiPiece {
  const PromotedLance._();

  factory PromotedLance({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _PromotedLance;

  @override
  String get name => '成香';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.goldMove(start, end, grid, isOwner);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return false;
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return null;
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return Lance(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }
}

@freezed
class PromotedPawn with _$PromotedPawn implements ShogiPiece {
  const PromotedPawn._();

  factory PromotedPawn({
    required String id,
    required bool isKing,
    required bool isOwner,
  }) = _PromotedPawn;

  @override
  String get name => 'と';

  @override
  bool canMove(Position start, Position end, List<List<ShogiPiece?>> grid) {
    return PieceMovement.goldMove(start, end, grid, isOwner);
  }

  @override
  bool canPut(Position position, List<List<ShogiPiece?>> grid) {
    return false;
  }

  @override
  ShogiPiece? getPromoted(bool isCurrentOwner) {
    return null;
  }

  @override
  ShogiPiece? getDemoted(bool isCurrentOwner) {
    return Pawn(id: id, isKing: isKing, isOwner: isCurrentOwner);
  }
}
