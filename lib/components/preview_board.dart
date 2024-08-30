import 'package:flutter/material.dart';
import 'package:my_shogi/models/board.dart';
import 'package:my_shogi/models/shogi_piece.dart';

class PreviewBoard extends StatelessWidget {
  final Board board;
  final void Function(Position position)? onTapTile;
  final void Function(ShogiPiece piece)? onTapCapturedPiece;

  const PreviewBoard({
    super.key,
    required this.board,
    this.onTapTile,
    this.onTapCapturedPiece,
  });

  @override
  Widget build(BuildContext context) {
    bool isInRange(Position end) {
      if (board.currentPiece != null && board.selectedPosition != null) {
        return board.currentPiece!.canMove(
          board.selectedPosition!,
          end,
          board.grid,
        );
      } else if (board.currentPiece != null && board.selectedPosition == null) {
        return board.currentPiece!.canPut(end, board.grid);
      } else {
        return false;
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          board.isPlayerTurn ? '先手番' : '後手番',
          style: const TextStyle(fontSize: 22),
        ),
        // 後手持ち駒
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (ShogiPiece piece in board.player2CapturedPieces)
              _Tile(
                isCurrent: piece.id == board.currentPiece?.id,
                inRange: false,
                piece: piece,
                onTapCapturedPiece: () {
                  if (onTapCapturedPiece != null) {
                    onTapCapturedPiece!(piece);
                  }
                },
              )._previewPiece(),
          ],
        ),
        const SizedBox(height: 20),
        // 盤面
        for (int y = 0; y < 9; y++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int x = 0; x < 9; x++)
                _Tile(
                  isCurrent: board.selectedPosition?.x == x &&
                      board.selectedPosition?.y == y,
                  inRange: isInRange(Position(x: x, y: y)),
                  piece: board.grid[y][x],
                  onTapTile: () {
                    if (onTapTile != null) {
                      onTapTile!(Position(x: x, y: y));
                    }
                  },
                ),
            ],
          ),
        const SizedBox(height: 20),
        // 先手持ち駒
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (ShogiPiece piece in board.player1CapturedPieces)
              _Tile(
                isCurrent: piece.id == board.currentPiece?.id,
                inRange: false,
                piece: piece,
                onTapCapturedPiece: () {
                  if (onTapCapturedPiece != null) {
                    onTapCapturedPiece!(piece);
                  }
                },
              )._previewPiece(),
          ],
        ),
      ],
    );
  }
}

class _Tile extends StatelessWidget {
  final bool isCurrent;
  final bool inRange;
  final ShogiPiece? piece;
  final VoidCallback? onTapTile;
  final VoidCallback? onTapCapturedPiece;

  const _Tile({
    required this.isCurrent,
    required this.inRange,
    required this.piece,
    this.onTapTile,
    this.onTapCapturedPiece,
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
        child: _previewPiece(),
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
    } else if (piece.isOwner) {
      return Colors.lightGreen;
    } else if (!piece.isOwner) {
      return Colors.lightBlue;
    } else {
      return null;
    }
  }

  Widget _previewPiece() {
    return GestureDetector(
      onTap: onTapCapturedPiece,
      child: Center(
        child: Transform.rotate(
          angle: piece == null || piece!.isOwner ? 0 : 3.14159,
          child: Text(
            piece != null ? piece!.type.name : '',
            style: TextStyle(
              fontSize: 12,
              fontWeight: isCurrent ? FontWeight.bold : null,
            ),
          ),
        ),
      ),
    );
  }
}
