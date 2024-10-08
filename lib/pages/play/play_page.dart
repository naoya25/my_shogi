import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_shogi/components/preview_board.dart';
import 'package:my_shogi/models/board.dart';
import 'package:my_shogi/models/position.dart';
import 'package:my_shogi/models/shogi_piece.dart';
import 'package:my_shogi/providers/board_provider.dart';
import 'package:my_shogi/utils/confirm_dialog.dart';

class PlayPage extends ConsumerWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardAsyncValue = ref.watch(boardNotifierProvider);
    final boardNotifier = ref.read(boardNotifierProvider.notifier);

    bool canPromote(Board board, Position position) {
      if (board.currentPiece!.promotePiece() == null) return false;
      if ((board.isPlayerTurn && position.y <= 2) ||
          (!board.isPlayerTurn && position.y >= 6)) {
        return true;
      }
      if ((board.isPlayerTurn && board.selectedPosition!.y <= 2) ||
          (!board.isPlayerTurn && board.selectedPosition!.y >= 6)) {
        return true;
      }

      return false;
    }

    ref.listen(boardNotifierProvider, (previous, next) {
      if (next.value != null && next.value!.winner != null) {
        showCupertinoDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('ゲーム終了'),
              content: Text('勝者: ${next.value!.winner! ? '先手' : '後手'}'),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    context.go('/');
                  },
                ),
              ],
            );
          },
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('将棋スピリッツ'),
        centerTitle: true,
      ),
      body: Center(
        child: boardAsyncValue.when(
          data: (board) {
            return PreviewBoard(
              board: board,
              onTapTile: (Position position) {
                final piece = board.grid[position.y][position.x];
                // 選択された駒がある
                if (board.selectedPosition != null &&
                    board.currentPiece != null) {
                  if (!board.canMove(position)) {
                    boardNotifier.resetSelection();
                  } else if (canPromote(board, position)) {
                    showConfirmDialog(
                      context: context,
                      message: '成りますか？',
                      onYes: () {
                        boardNotifier.movePiece(position, true);
                      },
                      onNo: () {
                        boardNotifier.movePiece(position, false);
                      },
                    );
                  } else {
                    boardNotifier.movePiece(position, false);
                  }
                } else if (board.selectedPosition == null &&
                    board.currentPiece != null) {
                  boardNotifier.putPiece(
                    board.currentPiece!,
                    position,
                  );
                } else {
                  if (piece == null) return;
                  if (piece.isOwner != board.isPlayerTurn) return;
                  boardNotifier.selectPiece(piece, position);
                }
              },
              onTapCapturedPiece: (ShogiPiece piece) {
                if (board.isPlayerTurn != piece.isOwner) return;
                boardNotifier.selectPiece(piece, null);
              },
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'),
        ),
      ),
    );
  }
}
