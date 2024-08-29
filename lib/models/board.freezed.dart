// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Board _$BoardFromJson(Map<String, dynamic> json) {
  return _Board.fromJson(json);
}

/// @nodoc
mixin _$Board {
  List<List<ShogiPiece?>> get grid => throw _privateConstructorUsedError; // 盤面
  String get playerTurn => throw _privateConstructorUsedError; // 先手番か後手番か
  bool get isGameOver => throw _privateConstructorUsedError; // 詰んでいるか
  List<ShogiPiece> get player1CapturedPieces =>
      throw _privateConstructorUsedError; // 先手の持ち駒
  List<ShogiPiece> get player2CapturedPieces =>
      throw _privateConstructorUsedError; // 後手の持ち駒
  ShogiPiece? get currentPiece => throw _privateConstructorUsedError; // 選択された駒
  int? get selectedPositionX => throw _privateConstructorUsedError; // 選択された駒の位置
  int? get selectedPositionY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res, Board>;
  @useResult
  $Res call(
      {List<List<ShogiPiece?>> grid,
      String playerTurn,
      bool isGameOver,
      List<ShogiPiece> player1CapturedPieces,
      List<ShogiPiece> player2CapturedPieces,
      ShogiPiece? currentPiece,
      int? selectedPositionX,
      int? selectedPositionY});

  $ShogiPieceCopyWith<$Res>? get currentPiece;
}

/// @nodoc
class _$BoardCopyWithImpl<$Res, $Val extends Board>
    implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grid = null,
    Object? playerTurn = null,
    Object? isGameOver = null,
    Object? player1CapturedPieces = null,
    Object? player2CapturedPieces = null,
    Object? currentPiece = freezed,
    Object? selectedPositionX = freezed,
    Object? selectedPositionY = freezed,
  }) {
    return _then(_value.copyWith(
      grid: null == grid
          ? _value.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as List<List<ShogiPiece?>>,
      playerTurn: null == playerTurn
          ? _value.playerTurn
          : playerTurn // ignore: cast_nullable_to_non_nullable
              as String,
      isGameOver: null == isGameOver
          ? _value.isGameOver
          : isGameOver // ignore: cast_nullable_to_non_nullable
              as bool,
      player1CapturedPieces: null == player1CapturedPieces
          ? _value.player1CapturedPieces
          : player1CapturedPieces // ignore: cast_nullable_to_non_nullable
              as List<ShogiPiece>,
      player2CapturedPieces: null == player2CapturedPieces
          ? _value.player2CapturedPieces
          : player2CapturedPieces // ignore: cast_nullable_to_non_nullable
              as List<ShogiPiece>,
      currentPiece: freezed == currentPiece
          ? _value.currentPiece
          : currentPiece // ignore: cast_nullable_to_non_nullable
              as ShogiPiece?,
      selectedPositionX: freezed == selectedPositionX
          ? _value.selectedPositionX
          : selectedPositionX // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedPositionY: freezed == selectedPositionY
          ? _value.selectedPositionY
          : selectedPositionY // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShogiPieceCopyWith<$Res>? get currentPiece {
    if (_value.currentPiece == null) {
      return null;
    }

    return $ShogiPieceCopyWith<$Res>(_value.currentPiece!, (value) {
      return _then(_value.copyWith(currentPiece: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BoardImplCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$$BoardImplCopyWith(
          _$BoardImpl value, $Res Function(_$BoardImpl) then) =
      __$$BoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<ShogiPiece?>> grid,
      String playerTurn,
      bool isGameOver,
      List<ShogiPiece> player1CapturedPieces,
      List<ShogiPiece> player2CapturedPieces,
      ShogiPiece? currentPiece,
      int? selectedPositionX,
      int? selectedPositionY});

  @override
  $ShogiPieceCopyWith<$Res>? get currentPiece;
}

/// @nodoc
class __$$BoardImplCopyWithImpl<$Res>
    extends _$BoardCopyWithImpl<$Res, _$BoardImpl>
    implements _$$BoardImplCopyWith<$Res> {
  __$$BoardImplCopyWithImpl(
      _$BoardImpl _value, $Res Function(_$BoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grid = null,
    Object? playerTurn = null,
    Object? isGameOver = null,
    Object? player1CapturedPieces = null,
    Object? player2CapturedPieces = null,
    Object? currentPiece = freezed,
    Object? selectedPositionX = freezed,
    Object? selectedPositionY = freezed,
  }) {
    return _then(_$BoardImpl(
      grid: null == grid
          ? _value._grid
          : grid // ignore: cast_nullable_to_non_nullable
              as List<List<ShogiPiece?>>,
      playerTurn: null == playerTurn
          ? _value.playerTurn
          : playerTurn // ignore: cast_nullable_to_non_nullable
              as String,
      isGameOver: null == isGameOver
          ? _value.isGameOver
          : isGameOver // ignore: cast_nullable_to_non_nullable
              as bool,
      player1CapturedPieces: null == player1CapturedPieces
          ? _value._player1CapturedPieces
          : player1CapturedPieces // ignore: cast_nullable_to_non_nullable
              as List<ShogiPiece>,
      player2CapturedPieces: null == player2CapturedPieces
          ? _value._player2CapturedPieces
          : player2CapturedPieces // ignore: cast_nullable_to_non_nullable
              as List<ShogiPiece>,
      currentPiece: freezed == currentPiece
          ? _value.currentPiece
          : currentPiece // ignore: cast_nullable_to_non_nullable
              as ShogiPiece?,
      selectedPositionX: freezed == selectedPositionX
          ? _value.selectedPositionX
          : selectedPositionX // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedPositionY: freezed == selectedPositionY
          ? _value.selectedPositionY
          : selectedPositionY // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardImpl with DiagnosticableTreeMixin implements _Board {
  const _$BoardImpl(
      {required final List<List<ShogiPiece?>> grid,
      required this.playerTurn,
      required this.isGameOver,
      required final List<ShogiPiece> player1CapturedPieces,
      required final List<ShogiPiece> player2CapturedPieces,
      this.currentPiece,
      this.selectedPositionX,
      this.selectedPositionY})
      : _grid = grid,
        _player1CapturedPieces = player1CapturedPieces,
        _player2CapturedPieces = player2CapturedPieces;

  factory _$BoardImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardImplFromJson(json);

  final List<List<ShogiPiece?>> _grid;
  @override
  List<List<ShogiPiece?>> get grid {
    if (_grid is EqualUnmodifiableListView) return _grid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grid);
  }

// 盤面
  @override
  final String playerTurn;
// 先手番か後手番か
  @override
  final bool isGameOver;
// 詰んでいるか
  final List<ShogiPiece> _player1CapturedPieces;
// 詰んでいるか
  @override
  List<ShogiPiece> get player1CapturedPieces {
    if (_player1CapturedPieces is EqualUnmodifiableListView)
      return _player1CapturedPieces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_player1CapturedPieces);
  }

// 先手の持ち駒
  final List<ShogiPiece> _player2CapturedPieces;
// 先手の持ち駒
  @override
  List<ShogiPiece> get player2CapturedPieces {
    if (_player2CapturedPieces is EqualUnmodifiableListView)
      return _player2CapturedPieces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_player2CapturedPieces);
  }

// 後手の持ち駒
  @override
  final ShogiPiece? currentPiece;
// 選択された駒
  @override
  final int? selectedPositionX;
// 選択された駒の位置
  @override
  final int? selectedPositionY;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Board(grid: $grid, playerTurn: $playerTurn, isGameOver: $isGameOver, player1CapturedPieces: $player1CapturedPieces, player2CapturedPieces: $player2CapturedPieces, currentPiece: $currentPiece, selectedPositionX: $selectedPositionX, selectedPositionY: $selectedPositionY)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Board'))
      ..add(DiagnosticsProperty('grid', grid))
      ..add(DiagnosticsProperty('playerTurn', playerTurn))
      ..add(DiagnosticsProperty('isGameOver', isGameOver))
      ..add(DiagnosticsProperty('player1CapturedPieces', player1CapturedPieces))
      ..add(DiagnosticsProperty('player2CapturedPieces', player2CapturedPieces))
      ..add(DiagnosticsProperty('currentPiece', currentPiece))
      ..add(DiagnosticsProperty('selectedPositionX', selectedPositionX))
      ..add(DiagnosticsProperty('selectedPositionY', selectedPositionY));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardImpl &&
            const DeepCollectionEquality().equals(other._grid, _grid) &&
            (identical(other.playerTurn, playerTurn) ||
                other.playerTurn == playerTurn) &&
            (identical(other.isGameOver, isGameOver) ||
                other.isGameOver == isGameOver) &&
            const DeepCollectionEquality()
                .equals(other._player1CapturedPieces, _player1CapturedPieces) &&
            const DeepCollectionEquality()
                .equals(other._player2CapturedPieces, _player2CapturedPieces) &&
            (identical(other.currentPiece, currentPiece) ||
                other.currentPiece == currentPiece) &&
            (identical(other.selectedPositionX, selectedPositionX) ||
                other.selectedPositionX == selectedPositionX) &&
            (identical(other.selectedPositionY, selectedPositionY) ||
                other.selectedPositionY == selectedPositionY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_grid),
      playerTurn,
      isGameOver,
      const DeepCollectionEquality().hash(_player1CapturedPieces),
      const DeepCollectionEquality().hash(_player2CapturedPieces),
      currentPiece,
      selectedPositionX,
      selectedPositionY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      __$$BoardImplCopyWithImpl<_$BoardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardImplToJson(
      this,
    );
  }
}

abstract class _Board implements Board {
  const factory _Board(
      {required final List<List<ShogiPiece?>> grid,
      required final String playerTurn,
      required final bool isGameOver,
      required final List<ShogiPiece> player1CapturedPieces,
      required final List<ShogiPiece> player2CapturedPieces,
      final ShogiPiece? currentPiece,
      final int? selectedPositionX,
      final int? selectedPositionY}) = _$BoardImpl;

  factory _Board.fromJson(Map<String, dynamic> json) = _$BoardImpl.fromJson;

  @override
  List<List<ShogiPiece?>> get grid;
  @override // 盤面
  String get playerTurn;
  @override // 先手番か後手番か
  bool get isGameOver;
  @override // 詰んでいるか
  List<ShogiPiece> get player1CapturedPieces;
  @override // 先手の持ち駒
  List<ShogiPiece> get player2CapturedPieces;
  @override // 後手の持ち駒
  ShogiPiece? get currentPiece;
  @override // 選択された駒
  int? get selectedPositionX;
  @override // 選択された駒の位置
  int? get selectedPositionY;
  @override
  @JsonKey(ignore: true)
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
