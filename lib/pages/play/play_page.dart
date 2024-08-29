import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_shogi/components/preview_board.dart';
import 'package:my_shogi/models/shogi_piece.dart';
import 'package:my_shogi/providers/board_provider.dart';

class PlayPage extends ConsumerWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardAsyncValue = ref.watch(boardNotifierProvider);
    final boardNotifier = ref.watch(boardNotifierProvider.notifier);

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
                if (piece == null) return;
                if (piece.isOwner != board.isPlayerTurn) return;

                // 選択された駒がある
                if (board.selectedPosition != null &&
                    board.currentPiece != null) {
                  // クリックされたマスが移動範囲に含まれてたら、駒の移動
                  // 範囲外ならresetする
                  boardNotifier.resetSelection();
                } else {
                  boardNotifier.selectPiece(piece, position);
                }
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
