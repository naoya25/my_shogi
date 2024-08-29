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

      int nx = board.selectedPositionX!;
      int ny = board.selectedPositionY!;
      List<Offset> moveOffsets = board.currentPiece!.moveOffsets();

      for (Offset offset in moveOffsets) {
        int targetX = nx + offset.dx.toInt();
        int targetY = board.playerTurn == '先手'
            ? ny - offset.dy.toInt()
            : ny + offset.dy.toInt();

        if (x == targetX && y == targetY) {
          // 進行方向に駒があるかチェック
          int stepX = (targetX - nx).sign;
          int stepY = (targetY - ny).sign;

          int checkX = nx + stepX;
          int checkY = ny + stepY;

          if (board.currentPiece?.type != ShogiPieceType.knight) {
            while (checkX != targetX || checkY != targetY) {
              // 途中に駒があれば false を返す
              if (board.grid[checkY][checkX] != null) {
                return false;
              }
              checkX += stepX;
              checkY += stepY;
            }
          }

          // 目標地点に味方の駒があれば false を返す
          ShogiPiece? piece = board.grid[targetY][targetX];
          if (piece != null && piece.owner == board.currentPiece!.owner) {
            return false;
          }

          return true;
        }
      }

      return false;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('手番: ${board.playerTurn}'),
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
