import 'package:flutter/material.dart';
import 'package:my_shogi/models/board.dart';
import 'package:my_shogi/models/shogi_piece.dart';

class PreviewBoard extends StatelessWidget {
  final Board board;
  final void Function(int x, int y)? onTapTile;

  const PreviewBoard({
    super.key,
    required this.board,
    this.onTapTile,
  });

  @override
  Widget build(BuildContext context) {
    bool isInRange(int x, int y) {
      if (board.selectedPositionX == null ||
          board.selectedPositionY == null ||
          board.currentPiece == null) {
        return false;
      }
      int nx = board.selectedPositionX!; // 選択中の駒の位置
      int ny = board.selectedPositionY!; // 選択中の駒の位置
      // 選択中の駒の移動範囲
      List<Offset> moveOffsets = board.currentPiece!.moveOffsets();

      for (Offset offset in moveOffsets) {
        int targetX = nx + offset.dx.toInt();
        int targetY = ny + offset.dy.toInt();
        if (x == targetX && y == targetY) {
          return true;
        }
      }

      return false;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int y = 0; y < 9; y++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int x = 0; x < 9; x++)
                _Tile(
                  isCurrent: board.selectedPositionX == x &&
                      board.selectedPositionY == y,
                  inRange: isInRange(x, y),
                  piece: board.grid[y][x],
                  onTapTile: () => onTapTile!(x, y),
                )
            ],
          )
      ],
    );
  }
}

class _Tile extends StatelessWidget {
  final bool isCurrent;
  final bool inRange;
  final ShogiPiece? piece;
  final VoidCallback? onTapTile;

  const _Tile({
    required this.isCurrent,
    required this.inRange,
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
          color: _getTileColor(isCurrent, inRange, piece),
        ),
        child: Center(
          child: Text(
            piece != null ? piece!.type.name : '',
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }

  Color? _getTileColor(bool isCurrent, bool inRange, ShogiPiece? piece) {
    if (isCurrent) {
      return Colors.red;
    } else if (inRange) {
      return Colors.grey;
    } else if (piece == null) {
      return Colors.white;
    } else if (piece.owner == '先手') {
      return Colors.lightGreen;
    } else if (piece.owner == '後手') {
      return Colors.lightBlue;
    } else {
      return null;
    }
  }
}
