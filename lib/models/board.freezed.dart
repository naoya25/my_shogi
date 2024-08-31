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

/// @nodoc
mixin _$Board {
  List<List<ShogiPiece?>> get grid => throw _privateConstructorUsedError;
  bool get isPlayerTurn => throw _privateConstructorUsedError;
  bool? get winner => throw _privateConstructorUsedError; // 詰んでいるか
  CapturedPieces get pieces1 => throw _privateConstructorUsedError; // 先手の持ち駒
  CapturedPieces get pieces2 => throw _privateConstructorUsedError; // 後手の持ち駒
  ShogiPiece? get currentPiece => throw _privateConstructorUsedError;
  Position? get selectedPosition => throw _privateConstructorUsedError;

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
      bool isPlayerTurn,
      bool? winner,
      CapturedPieces pieces1,
      CapturedPieces pieces2,
      ShogiPiece? currentPiece,
      Position? selectedPosition});

  $CapturedPiecesCopyWith<$Res> get pieces1;
  $CapturedPiecesCopyWith<$Res> get pieces2;
  $PositionCopyWith<$Res>? get selectedPosition;
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
    Object? isPlayerTurn = null,
    Object? winner = freezed,
    Object? pieces1 = null,
    Object? pieces2 = null,
    Object? currentPiece = freezed,
    Object? selectedPosition = freezed,
  }) {
    return _then(_value.copyWith(
      grid: null == grid
          ? _value.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as List<List<ShogiPiece?>>,
      isPlayerTurn: null == isPlayerTurn
          ? _value.isPlayerTurn
          : isPlayerTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as bool?,
      pieces1: null == pieces1
          ? _value.pieces1
          : pieces1 // ignore: cast_nullable_to_non_nullable
              as CapturedPieces,
      pieces2: null == pieces2
          ? _value.pieces2
          : pieces2 // ignore: cast_nullable_to_non_nullable
              as CapturedPieces,
      currentPiece: freezed == currentPiece
          ? _value.currentPiece
          : currentPiece // ignore: cast_nullable_to_non_nullable
              as ShogiPiece?,
      selectedPosition: freezed == selectedPosition
          ? _value.selectedPosition
          : selectedPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CapturedPiecesCopyWith<$Res> get pieces1 {
    return $CapturedPiecesCopyWith<$Res>(_value.pieces1, (value) {
      return _then(_value.copyWith(pieces1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CapturedPiecesCopyWith<$Res> get pieces2 {
    return $CapturedPiecesCopyWith<$Res>(_value.pieces2, (value) {
      return _then(_value.copyWith(pieces2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get selectedPosition {
    if (_value.selectedPosition == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.selectedPosition!, (value) {
      return _then(_value.copyWith(selectedPosition: value) as $Val);
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
      bool isPlayerTurn,
      bool? winner,
      CapturedPieces pieces1,
      CapturedPieces pieces2,
      ShogiPiece? currentPiece,
      Position? selectedPosition});

  @override
  $CapturedPiecesCopyWith<$Res> get pieces1;
  @override
  $CapturedPiecesCopyWith<$Res> get pieces2;
  @override
  $PositionCopyWith<$Res>? get selectedPosition;
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
    Object? isPlayerTurn = null,
    Object? winner = freezed,
    Object? pieces1 = null,
    Object? pieces2 = null,
    Object? currentPiece = freezed,
    Object? selectedPosition = freezed,
  }) {
    return _then(_$BoardImpl(
      grid: null == grid
          ? _value._grid
          : grid // ignore: cast_nullable_to_non_nullable
              as List<List<ShogiPiece?>>,
      isPlayerTurn: null == isPlayerTurn
          ? _value.isPlayerTurn
          : isPlayerTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as bool?,
      pieces1: null == pieces1
          ? _value.pieces1
          : pieces1 // ignore: cast_nullable_to_non_nullable
              as CapturedPieces,
      pieces2: null == pieces2
          ? _value.pieces2
          : pieces2 // ignore: cast_nullable_to_non_nullable
              as CapturedPieces,
      currentPiece: freezed == currentPiece
          ? _value.currentPiece
          : currentPiece // ignore: cast_nullable_to_non_nullable
              as ShogiPiece?,
      selectedPosition: freezed == selectedPosition
          ? _value.selectedPosition
          : selectedPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$BoardImpl extends _Board with DiagnosticableTreeMixin {
  const _$BoardImpl(
      {required final List<List<ShogiPiece?>> grid,
      required this.isPlayerTurn,
      required this.winner,
      required this.pieces1,
      required this.pieces2,
      this.currentPiece,
      this.selectedPosition})
      : _grid = grid,
        super._();

  final List<List<ShogiPiece?>> _grid;
  @override
  List<List<ShogiPiece?>> get grid {
    if (_grid is EqualUnmodifiableListView) return _grid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grid);
  }

  @override
  final bool isPlayerTurn;
  @override
  final bool? winner;
// 詰んでいるか
  @override
  final CapturedPieces pieces1;
// 先手の持ち駒
  @override
  final CapturedPieces pieces2;
// 後手の持ち駒
  @override
  final ShogiPiece? currentPiece;
  @override
  final Position? selectedPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Board(grid: $grid, isPlayerTurn: $isPlayerTurn, winner: $winner, pieces1: $pieces1, pieces2: $pieces2, currentPiece: $currentPiece, selectedPosition: $selectedPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Board'))
      ..add(DiagnosticsProperty('grid', grid))
      ..add(DiagnosticsProperty('isPlayerTurn', isPlayerTurn))
      ..add(DiagnosticsProperty('winner', winner))
      ..add(DiagnosticsProperty('pieces1', pieces1))
      ..add(DiagnosticsProperty('pieces2', pieces2))
      ..add(DiagnosticsProperty('currentPiece', currentPiece))
      ..add(DiagnosticsProperty('selectedPosition', selectedPosition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardImpl &&
            const DeepCollectionEquality().equals(other._grid, _grid) &&
            (identical(other.isPlayerTurn, isPlayerTurn) ||
                other.isPlayerTurn == isPlayerTurn) &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.pieces1, pieces1) || other.pieces1 == pieces1) &&
            (identical(other.pieces2, pieces2) || other.pieces2 == pieces2) &&
            (identical(other.currentPiece, currentPiece) ||
                other.currentPiece == currentPiece) &&
            (identical(other.selectedPosition, selectedPosition) ||
                other.selectedPosition == selectedPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_grid),
      isPlayerTurn,
      winner,
      pieces1,
      pieces2,
      currentPiece,
      selectedPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      __$$BoardImplCopyWithImpl<_$BoardImpl>(this, _$identity);
}

abstract class _Board extends Board {
  const factory _Board(
      {required final List<List<ShogiPiece?>> grid,
      required final bool isPlayerTurn,
      required final bool? winner,
      required final CapturedPieces pieces1,
      required final CapturedPieces pieces2,
      final ShogiPiece? currentPiece,
      final Position? selectedPosition}) = _$BoardImpl;
  const _Board._() : super._();

  @override
  List<List<ShogiPiece?>> get grid;
  @override
  bool get isPlayerTurn;
  @override
  bool? get winner;
  @override // 詰んでいるか
  CapturedPieces get pieces1;
  @override // 先手の持ち駒
  CapturedPieces get pieces2;
  @override // 後手の持ち駒
  ShogiPiece? get currentPiece;
  @override
  Position? get selectedPosition;
  @override
  @JsonKey(ignore: true)
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
