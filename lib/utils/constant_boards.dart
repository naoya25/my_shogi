import 'package:my_shogi/models/shogi_piece.dart';

class ConstantBoards {
  static List<List<ShogiPiece?>> normalBoard = [
    [
      const ShogiPiece(
        id: '1',
        type: ShogiPieceType.lance,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '2',
        type: ShogiPieceType.knight,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '3',
        type: ShogiPieceType.silver,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '4',
        type: ShogiPieceType.gold,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '5',
        type: ShogiPieceType.king,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '6',
        type: ShogiPieceType.gold,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '7',
        type: ShogiPieceType.silver,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '8',
        type: ShogiPieceType.knight,
        isOwner: false,
      ),
      const ShogiPiece(
        id: '9',
        type: ShogiPieceType.lance,
        isOwner: false,
      ),
    ],
    [
      null,
      const ShogiPiece(
        id: '10',
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
        type: ShogiPieceType.bishop,
        isOwner: false,
      ),
      null
    ],
    List.generate(
      9,
      (int i) => ShogiPiece(
        id: '${12 + i}',
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
        type: ShogiPieceType.pawn,
        isOwner: true,
      ),
    ),
    [
      null,
      const ShogiPiece(id: '30', type: ShogiPieceType.bishop, isOwner: true),
      null,
      null,
      null,
      null,
      null,
      const ShogiPiece(
        id: '31',
        type: ShogiPieceType.rook,
        isOwner: true,
      ),
      null
    ],
    [
      const ShogiPiece(
        id: '32',
        type: ShogiPieceType.lance,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '33',
        type: ShogiPieceType.knight,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '34',
        type: ShogiPieceType.silver,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '35',
        type: ShogiPieceType.gold,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '36',
        type: ShogiPieceType.king,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '37',
        type: ShogiPieceType.gold,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '38',
        type: ShogiPieceType.silver,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '39',
        type: ShogiPieceType.knight,
        isOwner: true,
      ),
      const ShogiPiece(
        id: '40',
        type: ShogiPieceType.lance,
        isOwner: true,
      ),
    ],
  ];
}
