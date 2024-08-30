import 'package:my_shogi/models/shogi_piece.dart';

class ConstantBoards {
  static List<List<ShogiPiece?>> normalBoard = [
    [
      const ShogiPiece(
        id: '1',
        isKing: false,
        type: ShogiPieceType.lance,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '2',
        isKing: false,
        type: ShogiPieceType.knight,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '3',
        isKing: false,
        type: ShogiPieceType.silver,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '4',
        isKing: false,
        type: ShogiPieceType.gold,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '5',
        isKing: true,
        type: ShogiPieceType.king,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '6',
        isKing: false,
        type: ShogiPieceType.gold,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '7',
        isKing: false,
        type: ShogiPieceType.silver,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '8',
        isKing: false,
        type: ShogiPieceType.knight,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '9',
        isKing: false,
        type: ShogiPieceType.lance,
        isOwner: false,
      ),
    ],
    [
      null,
      const ShogiPiece(
        id: '10',
        isKing: false,
        type: ShogiPieceType.rook,
        isOwner: false,
      ),
      null,
      null,
      null,
      null,
      null,
      const ShogiPiece(
        id: '11',
        isKing: false,
        type: ShogiPieceType.bishop,
        isOwner: false,
      ),
      null
    ],
    List.generate(
      9,
      (int i) => ShogiPiece(
        id: '${12 + i}',
        isKing: false,
        type: ShogiPieceType.pawn,
        isOwner: false,
      ),
    ),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(
      9,
      (int i) => ShogiPiece(
        id: '${21 + i}',
        isKing: false,
        type: ShogiPieceType.pawn,
        isOwner: true,
      ),
    ),
    [
      null,
      const ShogiPiece(
        id: '30',
        isKing: false,
        type: ShogiPieceType.bishop,
        isOwner: true,
      ),
      null,
      null,
      null,
      null,
      null,
      const ShogiPiece(
        id: '31',
        isKing: false,
        type: ShogiPieceType.rook,
        isOwner: true,
      ),
      null
    ],
    [
      const ShogiPiece(
        id: '32',
        isKing: false,
        type: ShogiPieceType.lance,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '33',
        isKing: false,
        type: ShogiPieceType.knight,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '34',
        isKing: false,
        type: ShogiPieceType.silver,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '35',
        isKing: false,
        type: ShogiPieceType.gold,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '36',
        isKing: true,
        type: ShogiPieceType.king,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '37',
        isKing: false,
        type: ShogiPieceType.gold,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '38',
        isKing: false,
        type: ShogiPieceType.silver,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '39',
        isKing: false,
        type: ShogiPieceType.knight,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '40',
        isKing: false,
        type: ShogiPieceType.lance,
        isOwner: true,
      ),
    ],
  ];
}
