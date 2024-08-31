import 'package:my_shogi/models/shogi_piece.dart';

class ConstantBoards {
  static List<List<ShogiPiece?>> normalBoard = [
    [
      Gold(id: '1', isKing: false, isOwner: false),
      Gold(id: '2', isKing: false, isOwner: false),
      Gold(id: '3', isKing: false, isOwner: false),
      Gold(id: '4', isKing: false, isOwner: false),
      Gold(id: '5', isKing: false, isOwner: false),
      Gold(id: '6', isKing: false, isOwner: false),
      Gold(id: '7', isKing: false, isOwner: false),
      Gold(id: '8', isKing: false, isOwner: false),
      Gold(id: '9', isKing: false, isOwner: false),
    ],
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    List.generate(9, (_) => null),
    [
      Gold(id: '1', isKing: false, isOwner: true),
      Gold(id: '2', isKing: false, isOwner: true),
      Gold(id: '3', isKing: false, isOwner: true),
      Gold(id: '4', isKing: false, isOwner: true),
      Gold(id: '5', isKing: false, isOwner: true),
      Gold(id: '6', isKing: false, isOwner: true),
      Gold(id: '7', isKing: false, isOwner: true),
      Gold(id: '8', isKing: false, isOwner: true),
      Gold(id: '9', isKing: false, isOwner: true),
    ],
  ];
}
