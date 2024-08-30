import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_shogi/components/preview_board.dart';
import 'package:my_shogi/models/shogi_piece.dart';
import 'package:my_shogi/providers/board_provider.dart';
import 'package:my_shogi/utils/confirm_dialog.dart';

class PlayPage extends ConsumerWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardAsyncValue = ref.watch(boardNotifierProvider);
    final boardNotifier = ref.watch(boardNotifierProvider.notifier);

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
                  if (((board.isPlayerTurn && position.y <= 2) ||
                          (!board.isPlayerTurn && position.y >= 6)) &&
                      board.currentPiece!.getPromotedType() != null) {
                    showConfirmDialog(
                      context: context,
                      message: '成りますか？',
                      onYes: () {
                        boardNotifier.movePiece(
                          board.currentPiece!,
                          board.selectedPosition!,
                          position,
                          true,
                        );
                      },
                      onNo: () {
                        boardNotifier.movePiece(
                          board.currentPiece!,
                          board.selectedPosition!,
                          position,
                          false,
                        );
                      },
                    );
                  } else {
                    boardNotifier.movePiece(
                      board.currentPiece!,
                      board.selectedPosition!,
                      position,
                      false,
                    );
                  }
                } else if (board.selectedPosition == null &&
                    board.currentPiece != null) {
                  boardNotifier.putPiece(
                    board.currentPiece!,
                    position,
                  );
                }

                if (piece == null) return;
                if (piece.isOwner != board.isPlayerTurn) return;
                boardNotifier.selectPiece(piece, position);
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
