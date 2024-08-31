import 'package:my_shogi/models/shogi_piece.dart';

class ConstantBoards {
  static List<List<ShogiPiece?>> normalBoard = [
    // 上から順に1～9筋、相手側
    [
      Lance(id: 'l1', isOwner: false),
      Knight(id: 'k1', isOwner: false),
      Silver(id: 's1', isOwner: false),
      Gold(id: 'g1', isOwner: false),
      King(id: 'K1', isOwner: false),
      Gold(id: 'g2', isOwner: false),
      Silver(id: 's2', isOwner: false),
      Knight(id: 'k2', isOwner: false),
      Lance(id: 'l2', isOwner: false),
    ],
    [
      null,
      Rook(id: 'r1', isOwner: false),
      null,
      null,
      null,
      null,
      null,
      Bishop(id: 'b1', isOwner: false),
      null,
    ],
    List.generate(9, (index) => Pawn(id: 'p${index + 1}', isOwner: false)),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(9, (index) => Pawn(id: 'P${index + 1}', isOwner: true)),
    [
      null,
      Bishop(id: 'B1', isOwner: true),
      null,
      null,
      null,
      null,
      null,
      Rook(id: 'R1', isOwner: true),
      null,
    ],
    [
      Lance(id: 'L1', isOwner: true),
      Knight(id: 'K1', isOwner: true),
      Silver(id: 'S1', isOwner: true),
      Gold(id: 'G1', isOwner: true),
      King(id: 'k1', isOwner: true),
      Gold(id: 'G2', isOwner: true),
      Silver(id: 'S2', isOwner: true),
      Knight(id: 'K2', isOwner: true),
      Lance(id: 'L2', isOwner: true),
    ],
  ];
}
