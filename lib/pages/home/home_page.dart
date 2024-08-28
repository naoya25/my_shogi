import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('将棋スピリッツ'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Home'),
            ElevatedButton(
              onPressed: () {
                context.push('/play');
              },
              child: const Text('play game'),
            )
          ],
        ),
      ),
    );
  }
}
