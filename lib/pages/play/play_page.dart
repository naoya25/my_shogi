import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_shogi/providers/board_provider.dart';

class PlayPage extends ConsumerWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardAsyncValue = ref.watch(boardNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('将棋スピリッツ'),
        centerTitle: true,
      ),
      body: Center(
        child: boardAsyncValue.when(
          data: (board) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: board.grid.map((row) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: row.map((piece) {
                    return Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: piece == null
                            ? Colors.white
                            : piece.owner == '先手'
                                ? Colors.lightGreen
                                : Colors.lightBlue,
                      ),
                      child: piece == null
                          ? null
                          : Center(
                              child: Text(
                                piece.type.name,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ),
                    );
                  }).toList(),
                );
              }).toList(),
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'),
        ),
      ),
    );
  }
}
