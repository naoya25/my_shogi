import 'package:my_shogi/models/board.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'board_provider.g.dart';

@riverpod
class BoardNotifier extends _$BoardNotifier {
  @override
  FutureOr<Board> build() async {
    return Board.initialize();
  }
}
