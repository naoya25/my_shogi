// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shogi_piece.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShogiPiece _$ShogiPieceFromJson(Map<String, dynamic> json) {
  return _ShogiPiece.fromJson(json);
}

/// @nodoc
mixin _$ShogiPiece {
  ShogiPieceType get type => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShogiPieceCopyWith<ShogiPiece> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShogiPieceCopyWith<$Res> {
  factory $ShogiPieceCopyWith(
          ShogiPiece value, $Res Function(ShogiPiece) then) =
      _$ShogiPieceCopyWithImpl<$Res, ShogiPiece>;
  @useResult
  $Res call({ShogiPieceType type, bool isOwner});
}

/// @nodoc
class _$ShogiPieceCopyWithImpl<$Res, $Val extends ShogiPiece>
    implements $ShogiPieceCopyWith<$Res> {
  _$ShogiPieceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShogiPieceType,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShogiPieceImplCopyWith<$Res>
    implements $ShogiPieceCopyWith<$Res> {
  factory _$$ShogiPieceImplCopyWith(
          _$ShogiPieceImpl value, $Res Function(_$ShogiPieceImpl) then) =
      __$$ShogiPieceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShogiPieceType type, bool isOwner});
}

/// @nodoc
class __$$ShogiPieceImplCopyWithImpl<$Res>
    extends _$ShogiPieceCopyWithImpl<$Res, _$ShogiPieceImpl>
    implements _$$ShogiPieceImplCopyWith<$Res> {
  __$$ShogiPieceImplCopyWithImpl(
      _$ShogiPieceImpl _value, $Res Function(_$ShogiPieceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isOwner = null,
  }) {
    return _then(_$ShogiPieceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShogiPieceType,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShogiPieceImpl extends _ShogiPiece with DiagnosticableTreeMixin {
  const _$ShogiPieceImpl({required this.type, required this.isOwner})
      : super._();

  factory _$ShogiPieceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShogiPieceImplFromJson(json);

  @override
  final ShogiPieceType type;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShogiPiece(type: $type, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShogiPiece'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShogiPieceImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShogiPieceImplCopyWith<_$ShogiPieceImpl> get copyWith =>
      __$$ShogiPieceImplCopyWithImpl<_$ShogiPieceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShogiPieceImplToJson(
      this,
    );
  }
}

abstract class _ShogiPiece extends ShogiPiece {
  const factory _ShogiPiece(
      {required final ShogiPieceType type,
      required final bool isOwner}) = _$ShogiPieceImpl;
  const _ShogiPiece._() : super._();

  factory _ShogiPiece.fromJson(Map<String, dynamic> json) =
      _$ShogiPieceImpl.fromJson;

  @override
  ShogiPieceType get type;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$ShogiPieceImplCopyWith<_$ShogiPieceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
mixin _$Position {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionImplCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$$PositionImplCopyWith(
          _$PositionImpl value, $Res Function(_$PositionImpl) then) =
      __$$PositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$$PositionImplCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$PositionImpl>
    implements _$$PositionImplCopyWith<$Res> {
  __$$PositionImplCopyWithImpl(
      _$PositionImpl _value, $Res Function(_$PositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$PositionImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionImpl with DiagnosticableTreeMixin implements _Position {
  const _$PositionImpl({required this.x, required this.y});

  factory _$PositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionImplFromJson(json);

  @override
  final int x;
  @override
  final int y;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Position(x: $x, y: $y)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Position'))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      __$$PositionImplCopyWithImpl<_$PositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionImplToJson(
      this,
    );
  }
}

abstract class _Position implements Position {
  const factory _Position({required final int x, required final int y}) =
      _$PositionImpl;

  factory _Position.fromJson(Map<String, dynamic> json) =
      _$PositionImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
