// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captured_pieces.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CapturedPieces {
  bool get isOwner => throw _privateConstructorUsedError;
  List<ShogiPiece> get pieces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CapturedPiecesCopyWith<CapturedPieces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapturedPiecesCopyWith<$Res> {
  factory $CapturedPiecesCopyWith(
          CapturedPieces value, $Res Function(CapturedPieces) then) =
      _$CapturedPiecesCopyWithImpl<$Res, CapturedPieces>;
  @useResult
  $Res call({bool isOwner, List<ShogiPiece> pieces});
}

/// @nodoc
class _$CapturedPiecesCopyWithImpl<$Res, $Val extends CapturedPieces>
    implements $CapturedPiecesCopyWith<$Res> {
  _$CapturedPiecesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOwner = null,
    Object? pieces = null,
  }) {
    return _then(_value.copyWith(
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      pieces: null == pieces
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<ShogiPiece>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapturedPiecesImplCopyWith<$Res>
    implements $CapturedPiecesCopyWith<$Res> {
  factory _$$CapturedPiecesImplCopyWith(_$CapturedPiecesImpl value,
          $Res Function(_$CapturedPiecesImpl) then) =
      __$$CapturedPiecesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOwner, List<ShogiPiece> pieces});
}

/// @nodoc
class __$$CapturedPiecesImplCopyWithImpl<$Res>
    extends _$CapturedPiecesCopyWithImpl<$Res, _$CapturedPiecesImpl>
    implements _$$CapturedPiecesImplCopyWith<$Res> {
  __$$CapturedPiecesImplCopyWithImpl(
      _$CapturedPiecesImpl _value, $Res Function(_$CapturedPiecesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOwner = null,
    Object? pieces = null,
  }) {
    return _then(_$CapturedPiecesImpl(
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      pieces: null == pieces
          ? _value._pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<ShogiPiece>,
    ));
  }
}

/// @nodoc

class _$CapturedPiecesImpl extends _CapturedPieces
    with DiagnosticableTreeMixin {
  const _$CapturedPiecesImpl(
      {required this.isOwner, required final List<ShogiPiece> pieces})
      : _pieces = pieces,
        super._();

  @override
  final bool isOwner;
  final List<ShogiPiece> _pieces;
  @override
  List<ShogiPiece> get pieces {
    if (_pieces is EqualUnmodifiableListView) return _pieces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pieces);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CapturedPieces(isOwner: $isOwner, pieces: $pieces)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CapturedPieces'))
      ..add(DiagnosticsProperty('isOwner', isOwner))
      ..add(DiagnosticsProperty('pieces', pieces));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapturedPiecesImpl &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
            const DeepCollectionEquality().equals(other._pieces, _pieces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isOwner, const DeepCollectionEquality().hash(_pieces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapturedPiecesImplCopyWith<_$CapturedPiecesImpl> get copyWith =>
      __$$CapturedPiecesImplCopyWithImpl<_$CapturedPiecesImpl>(
          this, _$identity);
}

abstract class _CapturedPieces extends CapturedPieces {
  const factory _CapturedPieces(
      {required final bool isOwner,
      required final List<ShogiPiece> pieces}) = _$CapturedPiecesImpl;
  const _CapturedPieces._() : super._();

  @override
  bool get isOwner;
  @override
  List<ShogiPiece> get pieces;
  @override
  @JsonKey(ignore: true)
  _$$CapturedPiecesImplCopyWith<_$CapturedPiecesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
