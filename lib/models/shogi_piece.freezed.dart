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
  ShogiPieceType get type => throw _privateConstructorUsedError; // 駒の種類
  String get owner => throw _privateConstructorUsedError; // 駒の持ち主 (先手か後手)
  bool get isPromoted => throw _privateConstructorUsedError;

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
  $Res call({ShogiPieceType type, String owner, bool isPromoted});
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
    Object? owner = null,
    Object? isPromoted = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShogiPieceType,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      isPromoted: null == isPromoted
          ? _value.isPromoted
          : isPromoted // ignore: cast_nullable_to_non_nullable
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
  $Res call({ShogiPieceType type, String owner, bool isPromoted});
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
    Object? owner = null,
    Object? isPromoted = null,
  }) {
    return _then(_$ShogiPieceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShogiPieceType,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      isPromoted: null == isPromoted
          ? _value.isPromoted
          : isPromoted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShogiPieceImpl with DiagnosticableTreeMixin implements _ShogiPiece {
  const _$ShogiPieceImpl(
      {required this.type, required this.owner, required this.isPromoted});

  factory _$ShogiPieceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShogiPieceImplFromJson(json);

  @override
  final ShogiPieceType type;
// 駒の種類
  @override
  final String owner;
// 駒の持ち主 (先手か後手)
  @override
  final bool isPromoted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShogiPiece(type: $type, owner: $owner, isPromoted: $isPromoted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShogiPiece'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('isPromoted', isPromoted));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShogiPieceImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.isPromoted, isPromoted) ||
                other.isPromoted == isPromoted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, owner, isPromoted);

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

abstract class _ShogiPiece implements ShogiPiece {
  const factory _ShogiPiece(
      {required final ShogiPieceType type,
      required final String owner,
      required final bool isPromoted}) = _$ShogiPieceImpl;

  factory _ShogiPiece.fromJson(Map<String, dynamic> json) =
      _$ShogiPieceImpl.fromJson;

  @override
  ShogiPieceType get type;
  @override // 駒の種類
  String get owner;
  @override // 駒の持ち主 (先手か後手)
  bool get isPromoted;
  @override
  @JsonKey(ignore: true)
  _$$ShogiPieceImplCopyWith<_$ShogiPieceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
