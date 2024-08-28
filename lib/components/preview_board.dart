import 'package:flutter/material.dart';
import 'package:my_shogi/models/board.dart';
import 'package:my_shogi/models/shogi_piece.dart';

class PreviewBoard extends StatelessWidget {
  final Board board;
  final void Function(int i, int j)? onTapTile;

  const PreviewBoard({
    super.key,
    required this.board,
    this.onTapTile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 9; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int j = 0; j < 9; j++)
                _Tile(
                  piece: board.grid[i][j],
                  onTapTile: () => onTapTile!(i, j),
                )
            ],
          )
      ],
    );
  }
}

class _Tile extends StatelessWidget {
  final ShogiPiece? piece;
  final VoidCallback? onTapTile;

  const _Tile({
    required this.piece,
    this.onTapTile,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapTile,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(),
          color: piece == null
              ? Colors.white
              : piece?.owner == '先手'
                  ? Colors.lightGreen
                  : Colors.lightBlue,
        ),
        child: piece == null
            ? null
            : Center(
                child: Text(
                  piece!.type.name,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
      ),
    );
  }
}
