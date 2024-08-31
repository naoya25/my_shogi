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

/// @nodoc
mixin _$ShogiPiece {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

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
  $Res call({String id, String name, bool isKing, bool isOwner});
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
    Object? id = null,
    Object? name = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({String id, String name, bool isKing, bool isOwner});
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
    Object? id = null,
    Object? name = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$ShogiPieceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShogiPieceImpl extends _ShogiPiece with DiagnosticableTreeMixin {
  const _$ShogiPieceImpl(
      {required this.id,
      required this.name,
      required this.isKing,
      required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShogiPiece(id: $id, name: $name, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShogiPiece'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShogiPieceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShogiPieceImplCopyWith<_$ShogiPieceImpl> get copyWith =>
      __$$ShogiPieceImplCopyWithImpl<_$ShogiPieceImpl>(this, _$identity);
}

abstract class _ShogiPiece extends ShogiPiece {
  const factory _ShogiPiece(
      {required final String id,
      required final String name,
      required final bool isKing,
      required final bool isOwner}) = _$ShogiPieceImpl;
  const _ShogiPiece._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$ShogiPieceImplCopyWith<_$ShogiPieceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$King {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KingCopyWith<King> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KingCopyWith<$Res> {
  factory $KingCopyWith(King value, $Res Function(King) then) =
      _$KingCopyWithImpl<$Res, King>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$KingCopyWithImpl<$Res, $Val extends King>
    implements $KingCopyWith<$Res> {
  _$KingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KingImplCopyWith<$Res> implements $KingCopyWith<$Res> {
  factory _$$KingImplCopyWith(
          _$KingImpl value, $Res Function(_$KingImpl) then) =
      __$$KingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$KingImplCopyWithImpl<$Res>
    extends _$KingCopyWithImpl<$Res, _$KingImpl>
    implements _$$KingImplCopyWith<$Res> {
  __$$KingImplCopyWithImpl(_$KingImpl _value, $Res Function(_$KingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$KingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$KingImpl extends _King with DiagnosticableTreeMixin {
  _$KingImpl({required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'King(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'King'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KingImplCopyWith<_$KingImpl> get copyWith =>
      __$$KingImplCopyWithImpl<_$KingImpl>(this, _$identity);
}

abstract class _King extends King {
  factory _King(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$KingImpl;
  _King._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$KingImplCopyWith<_$KingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Rook {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RookCopyWith<Rook> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RookCopyWith<$Res> {
  factory $RookCopyWith(Rook value, $Res Function(Rook) then) =
      _$RookCopyWithImpl<$Res, Rook>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$RookCopyWithImpl<$Res, $Val extends Rook>
    implements $RookCopyWith<$Res> {
  _$RookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RookImplCopyWith<$Res> implements $RookCopyWith<$Res> {
  factory _$$RookImplCopyWith(
          _$RookImpl value, $Res Function(_$RookImpl) then) =
      __$$RookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$RookImplCopyWithImpl<$Res>
    extends _$RookCopyWithImpl<$Res, _$RookImpl>
    implements _$$RookImplCopyWith<$Res> {
  __$$RookImplCopyWithImpl(_$RookImpl _value, $Res Function(_$RookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$RookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RookImpl extends _Rook with DiagnosticableTreeMixin {
  _$RookImpl({required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Rook(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Rook'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RookImplCopyWith<_$RookImpl> get copyWith =>
      __$$RookImplCopyWithImpl<_$RookImpl>(this, _$identity);
}

abstract class _Rook extends Rook {
  factory _Rook(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$RookImpl;
  _Rook._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$RookImplCopyWith<_$RookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Bishop {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BishopCopyWith<Bishop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BishopCopyWith<$Res> {
  factory $BishopCopyWith(Bishop value, $Res Function(Bishop) then) =
      _$BishopCopyWithImpl<$Res, Bishop>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$BishopCopyWithImpl<$Res, $Val extends Bishop>
    implements $BishopCopyWith<$Res> {
  _$BishopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BishopImplCopyWith<$Res> implements $BishopCopyWith<$Res> {
  factory _$$BishopImplCopyWith(
          _$BishopImpl value, $Res Function(_$BishopImpl) then) =
      __$$BishopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$BishopImplCopyWithImpl<$Res>
    extends _$BishopCopyWithImpl<$Res, _$BishopImpl>
    implements _$$BishopImplCopyWith<$Res> {
  __$$BishopImplCopyWithImpl(
      _$BishopImpl _value, $Res Function(_$BishopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$BishopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BishopImpl extends _Bishop with DiagnosticableTreeMixin {
  _$BishopImpl({required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bishop(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bishop'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BishopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BishopImplCopyWith<_$BishopImpl> get copyWith =>
      __$$BishopImplCopyWithImpl<_$BishopImpl>(this, _$identity);
}

abstract class _Bishop extends Bishop {
  factory _Bishop(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$BishopImpl;
  _Bishop._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$BishopImplCopyWith<_$BishopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Gold {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoldCopyWith<Gold> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldCopyWith<$Res> {
  factory $GoldCopyWith(Gold value, $Res Function(Gold) then) =
      _$GoldCopyWithImpl<$Res, Gold>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$GoldCopyWithImpl<$Res, $Val extends Gold>
    implements $GoldCopyWith<$Res> {
  _$GoldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoldImplCopyWith<$Res> implements $GoldCopyWith<$Res> {
  factory _$$GoldImplCopyWith(
          _$GoldImpl value, $Res Function(_$GoldImpl) then) =
      __$$GoldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$GoldImplCopyWithImpl<$Res>
    extends _$GoldCopyWithImpl<$Res, _$GoldImpl>
    implements _$$GoldImplCopyWith<$Res> {
  __$$GoldImplCopyWithImpl(_$GoldImpl _value, $Res Function(_$GoldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$GoldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GoldImpl extends _Gold with DiagnosticableTreeMixin {
  _$GoldImpl({required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Gold(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Gold'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoldImplCopyWith<_$GoldImpl> get copyWith =>
      __$$GoldImplCopyWithImpl<_$GoldImpl>(this, _$identity);
}

abstract class _Gold extends Gold {
  factory _Gold(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$GoldImpl;
  _Gold._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$GoldImplCopyWith<_$GoldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Silver {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SilverCopyWith<Silver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SilverCopyWith<$Res> {
  factory $SilverCopyWith(Silver value, $Res Function(Silver) then) =
      _$SilverCopyWithImpl<$Res, Silver>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$SilverCopyWithImpl<$Res, $Val extends Silver>
    implements $SilverCopyWith<$Res> {
  _$SilverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SilverImplCopyWith<$Res> implements $SilverCopyWith<$Res> {
  factory _$$SilverImplCopyWith(
          _$SilverImpl value, $Res Function(_$SilverImpl) then) =
      __$$SilverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$SilverImplCopyWithImpl<$Res>
    extends _$SilverCopyWithImpl<$Res, _$SilverImpl>
    implements _$$SilverImplCopyWith<$Res> {
  __$$SilverImplCopyWithImpl(
      _$SilverImpl _value, $Res Function(_$SilverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$SilverImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SilverImpl extends _Silver with DiagnosticableTreeMixin {
  _$SilverImpl({required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Silver(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Silver'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SilverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SilverImplCopyWith<_$SilverImpl> get copyWith =>
      __$$SilverImplCopyWithImpl<_$SilverImpl>(this, _$identity);
}

abstract class _Silver extends Silver {
  factory _Silver(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$SilverImpl;
  _Silver._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$SilverImplCopyWith<_$SilverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Knight {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KnightCopyWith<Knight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnightCopyWith<$Res> {
  factory $KnightCopyWith(Knight value, $Res Function(Knight) then) =
      _$KnightCopyWithImpl<$Res, Knight>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$KnightCopyWithImpl<$Res, $Val extends Knight>
    implements $KnightCopyWith<$Res> {
  _$KnightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KnightImplCopyWith<$Res> implements $KnightCopyWith<$Res> {
  factory _$$KnightImplCopyWith(
          _$KnightImpl value, $Res Function(_$KnightImpl) then) =
      __$$KnightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$KnightImplCopyWithImpl<$Res>
    extends _$KnightCopyWithImpl<$Res, _$KnightImpl>
    implements _$$KnightImplCopyWith<$Res> {
  __$$KnightImplCopyWithImpl(
      _$KnightImpl _value, $Res Function(_$KnightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$KnightImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$KnightImpl extends _Knight with DiagnosticableTreeMixin {
  _$KnightImpl({required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Knight(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Knight'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnightImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KnightImplCopyWith<_$KnightImpl> get copyWith =>
      __$$KnightImplCopyWithImpl<_$KnightImpl>(this, _$identity);
}

abstract class _Knight extends Knight {
  factory _Knight(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$KnightImpl;
  _Knight._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$KnightImplCopyWith<_$KnightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Lance {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanceCopyWith<Lance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanceCopyWith<$Res> {
  factory $LanceCopyWith(Lance value, $Res Function(Lance) then) =
      _$LanceCopyWithImpl<$Res, Lance>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$LanceCopyWithImpl<$Res, $Val extends Lance>
    implements $LanceCopyWith<$Res> {
  _$LanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanceImplCopyWith<$Res> implements $LanceCopyWith<$Res> {
  factory _$$LanceImplCopyWith(
          _$LanceImpl value, $Res Function(_$LanceImpl) then) =
      __$$LanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$LanceImplCopyWithImpl<$Res>
    extends _$LanceCopyWithImpl<$Res, _$LanceImpl>
    implements _$$LanceImplCopyWith<$Res> {
  __$$LanceImplCopyWithImpl(
      _$LanceImpl _value, $Res Function(_$LanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$LanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LanceImpl extends _Lance with DiagnosticableTreeMixin {
  _$LanceImpl({required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lance(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Lance'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanceImplCopyWith<_$LanceImpl> get copyWith =>
      __$$LanceImplCopyWithImpl<_$LanceImpl>(this, _$identity);
}

abstract class _Lance extends Lance {
  factory _Lance(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$LanceImpl;
  _Lance._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$LanceImplCopyWith<_$LanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Pawn {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PawnCopyWith<Pawn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PawnCopyWith<$Res> {
  factory $PawnCopyWith(Pawn value, $Res Function(Pawn) then) =
      _$PawnCopyWithImpl<$Res, Pawn>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$PawnCopyWithImpl<$Res, $Val extends Pawn>
    implements $PawnCopyWith<$Res> {
  _$PawnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PawnImplCopyWith<$Res> implements $PawnCopyWith<$Res> {
  factory _$$PawnImplCopyWith(
          _$PawnImpl value, $Res Function(_$PawnImpl) then) =
      __$$PawnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$PawnImplCopyWithImpl<$Res>
    extends _$PawnCopyWithImpl<$Res, _$PawnImpl>
    implements _$$PawnImplCopyWith<$Res> {
  __$$PawnImplCopyWithImpl(_$PawnImpl _value, $Res Function(_$PawnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$PawnImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PawnImpl extends _Pawn with DiagnosticableTreeMixin {
  _$PawnImpl({required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pawn(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pawn'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PawnImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PawnImplCopyWith<_$PawnImpl> get copyWith =>
      __$$PawnImplCopyWithImpl<_$PawnImpl>(this, _$identity);
}

abstract class _Pawn extends Pawn {
  factory _Pawn(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$PawnImpl;
  _Pawn._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$PawnImplCopyWith<_$PawnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotedRook {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotedRookCopyWith<PromotedRook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotedRookCopyWith<$Res> {
  factory $PromotedRookCopyWith(
          PromotedRook value, $Res Function(PromotedRook) then) =
      _$PromotedRookCopyWithImpl<$Res, PromotedRook>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$PromotedRookCopyWithImpl<$Res, $Val extends PromotedRook>
    implements $PromotedRookCopyWith<$Res> {
  _$PromotedRookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotedRookImplCopyWith<$Res>
    implements $PromotedRookCopyWith<$Res> {
  factory _$$PromotedRookImplCopyWith(
          _$PromotedRookImpl value, $Res Function(_$PromotedRookImpl) then) =
      __$$PromotedRookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$PromotedRookImplCopyWithImpl<$Res>
    extends _$PromotedRookCopyWithImpl<$Res, _$PromotedRookImpl>
    implements _$$PromotedRookImplCopyWith<$Res> {
  __$$PromotedRookImplCopyWithImpl(
      _$PromotedRookImpl _value, $Res Function(_$PromotedRookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$PromotedRookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PromotedRookImpl extends _PromotedRook with DiagnosticableTreeMixin {
  _$PromotedRookImpl(
      {required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PromotedRook(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PromotedRook'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotedRookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotedRookImplCopyWith<_$PromotedRookImpl> get copyWith =>
      __$$PromotedRookImplCopyWithImpl<_$PromotedRookImpl>(this, _$identity);
}

abstract class _PromotedRook extends PromotedRook {
  factory _PromotedRook(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$PromotedRookImpl;
  _PromotedRook._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$PromotedRookImplCopyWith<_$PromotedRookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotedBishop {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotedBishopCopyWith<PromotedBishop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotedBishopCopyWith<$Res> {
  factory $PromotedBishopCopyWith(
          PromotedBishop value, $Res Function(PromotedBishop) then) =
      _$PromotedBishopCopyWithImpl<$Res, PromotedBishop>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$PromotedBishopCopyWithImpl<$Res, $Val extends PromotedBishop>
    implements $PromotedBishopCopyWith<$Res> {
  _$PromotedBishopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotedBishopImplCopyWith<$Res>
    implements $PromotedBishopCopyWith<$Res> {
  factory _$$PromotedBishopImplCopyWith(_$PromotedBishopImpl value,
          $Res Function(_$PromotedBishopImpl) then) =
      __$$PromotedBishopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$PromotedBishopImplCopyWithImpl<$Res>
    extends _$PromotedBishopCopyWithImpl<$Res, _$PromotedBishopImpl>
    implements _$$PromotedBishopImplCopyWith<$Res> {
  __$$PromotedBishopImplCopyWithImpl(
      _$PromotedBishopImpl _value, $Res Function(_$PromotedBishopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$PromotedBishopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PromotedBishopImpl extends _PromotedBishop
    with DiagnosticableTreeMixin {
  _$PromotedBishopImpl(
      {required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PromotedBishop(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PromotedBishop'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotedBishopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotedBishopImplCopyWith<_$PromotedBishopImpl> get copyWith =>
      __$$PromotedBishopImplCopyWithImpl<_$PromotedBishopImpl>(
          this, _$identity);
}

abstract class _PromotedBishop extends PromotedBishop {
  factory _PromotedBishop(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$PromotedBishopImpl;
  _PromotedBishop._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$PromotedBishopImplCopyWith<_$PromotedBishopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotedSilver {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotedSilverCopyWith<PromotedSilver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotedSilverCopyWith<$Res> {
  factory $PromotedSilverCopyWith(
          PromotedSilver value, $Res Function(PromotedSilver) then) =
      _$PromotedSilverCopyWithImpl<$Res, PromotedSilver>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$PromotedSilverCopyWithImpl<$Res, $Val extends PromotedSilver>
    implements $PromotedSilverCopyWith<$Res> {
  _$PromotedSilverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotedSilverImplCopyWith<$Res>
    implements $PromotedSilverCopyWith<$Res> {
  factory _$$PromotedSilverImplCopyWith(_$PromotedSilverImpl value,
          $Res Function(_$PromotedSilverImpl) then) =
      __$$PromotedSilverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$PromotedSilverImplCopyWithImpl<$Res>
    extends _$PromotedSilverCopyWithImpl<$Res, _$PromotedSilverImpl>
    implements _$$PromotedSilverImplCopyWith<$Res> {
  __$$PromotedSilverImplCopyWithImpl(
      _$PromotedSilverImpl _value, $Res Function(_$PromotedSilverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$PromotedSilverImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PromotedSilverImpl extends _PromotedSilver
    with DiagnosticableTreeMixin {
  _$PromotedSilverImpl(
      {required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PromotedSilver(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PromotedSilver'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotedSilverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotedSilverImplCopyWith<_$PromotedSilverImpl> get copyWith =>
      __$$PromotedSilverImplCopyWithImpl<_$PromotedSilverImpl>(
          this, _$identity);
}

abstract class _PromotedSilver extends PromotedSilver {
  factory _PromotedSilver(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$PromotedSilverImpl;
  _PromotedSilver._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$PromotedSilverImplCopyWith<_$PromotedSilverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotedKnight {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotedKnightCopyWith<PromotedKnight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotedKnightCopyWith<$Res> {
  factory $PromotedKnightCopyWith(
          PromotedKnight value, $Res Function(PromotedKnight) then) =
      _$PromotedKnightCopyWithImpl<$Res, PromotedKnight>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$PromotedKnightCopyWithImpl<$Res, $Val extends PromotedKnight>
    implements $PromotedKnightCopyWith<$Res> {
  _$PromotedKnightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotedKnightImplCopyWith<$Res>
    implements $PromotedKnightCopyWith<$Res> {
  factory _$$PromotedKnightImplCopyWith(_$PromotedKnightImpl value,
          $Res Function(_$PromotedKnightImpl) then) =
      __$$PromotedKnightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$PromotedKnightImplCopyWithImpl<$Res>
    extends _$PromotedKnightCopyWithImpl<$Res, _$PromotedKnightImpl>
    implements _$$PromotedKnightImplCopyWith<$Res> {
  __$$PromotedKnightImplCopyWithImpl(
      _$PromotedKnightImpl _value, $Res Function(_$PromotedKnightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$PromotedKnightImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PromotedKnightImpl extends _PromotedKnight
    with DiagnosticableTreeMixin {
  _$PromotedKnightImpl(
      {required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PromotedKnight(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PromotedKnight'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotedKnightImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotedKnightImplCopyWith<_$PromotedKnightImpl> get copyWith =>
      __$$PromotedKnightImplCopyWithImpl<_$PromotedKnightImpl>(
          this, _$identity);
}

abstract class _PromotedKnight extends PromotedKnight {
  factory _PromotedKnight(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$PromotedKnightImpl;
  _PromotedKnight._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$PromotedKnightImplCopyWith<_$PromotedKnightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotedLance {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotedLanceCopyWith<PromotedLance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotedLanceCopyWith<$Res> {
  factory $PromotedLanceCopyWith(
          PromotedLance value, $Res Function(PromotedLance) then) =
      _$PromotedLanceCopyWithImpl<$Res, PromotedLance>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$PromotedLanceCopyWithImpl<$Res, $Val extends PromotedLance>
    implements $PromotedLanceCopyWith<$Res> {
  _$PromotedLanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotedLanceImplCopyWith<$Res>
    implements $PromotedLanceCopyWith<$Res> {
  factory _$$PromotedLanceImplCopyWith(
          _$PromotedLanceImpl value, $Res Function(_$PromotedLanceImpl) then) =
      __$$PromotedLanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$PromotedLanceImplCopyWithImpl<$Res>
    extends _$PromotedLanceCopyWithImpl<$Res, _$PromotedLanceImpl>
    implements _$$PromotedLanceImplCopyWith<$Res> {
  __$$PromotedLanceImplCopyWithImpl(
      _$PromotedLanceImpl _value, $Res Function(_$PromotedLanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$PromotedLanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PromotedLanceImpl extends _PromotedLance with DiagnosticableTreeMixin {
  _$PromotedLanceImpl(
      {required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PromotedLance(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PromotedLance'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotedLanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotedLanceImplCopyWith<_$PromotedLanceImpl> get copyWith =>
      __$$PromotedLanceImplCopyWithImpl<_$PromotedLanceImpl>(this, _$identity);
}

abstract class _PromotedLance extends PromotedLance {
  factory _PromotedLance(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$PromotedLanceImpl;
  _PromotedLance._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$PromotedLanceImplCopyWith<_$PromotedLanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotedPawn {
  String get id => throw _privateConstructorUsedError;
  bool get isKing => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotedPawnCopyWith<PromotedPawn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotedPawnCopyWith<$Res> {
  factory $PromotedPawnCopyWith(
          PromotedPawn value, $Res Function(PromotedPawn) then) =
      _$PromotedPawnCopyWithImpl<$Res, PromotedPawn>;
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class _$PromotedPawnCopyWithImpl<$Res, $Val extends PromotedPawn>
    implements $PromotedPawnCopyWith<$Res> {
  _$PromotedPawnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotedPawnImplCopyWith<$Res>
    implements $PromotedPawnCopyWith<$Res> {
  factory _$$PromotedPawnImplCopyWith(
          _$PromotedPawnImpl value, $Res Function(_$PromotedPawnImpl) then) =
      __$$PromotedPawnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isKing, bool isOwner});
}

/// @nodoc
class __$$PromotedPawnImplCopyWithImpl<$Res>
    extends _$PromotedPawnCopyWithImpl<$Res, _$PromotedPawnImpl>
    implements _$$PromotedPawnImplCopyWith<$Res> {
  __$$PromotedPawnImplCopyWithImpl(
      _$PromotedPawnImpl _value, $Res Function(_$PromotedPawnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isKing = null,
    Object? isOwner = null,
  }) {
    return _then(_$PromotedPawnImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isKing: null == isKing
          ? _value.isKing
          : isKing // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PromotedPawnImpl extends _PromotedPawn with DiagnosticableTreeMixin {
  _$PromotedPawnImpl(
      {required this.id, required this.isKing, required this.isOwner})
      : super._();

  @override
  final String id;
  @override
  final bool isKing;
  @override
  final bool isOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PromotedPawn(id: $id, isKing: $isKing, isOwner: $isOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PromotedPawn'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isKing', isKing))
      ..add(DiagnosticsProperty('isOwner', isOwner));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotedPawnImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isKing, isKing) || other.isKing == isKing) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isKing, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotedPawnImplCopyWith<_$PromotedPawnImpl> get copyWith =>
      __$$PromotedPawnImplCopyWithImpl<_$PromotedPawnImpl>(this, _$identity);
}

abstract class _PromotedPawn extends PromotedPawn {
  factory _PromotedPawn(
      {required final String id,
      required final bool isKing,
      required final bool isOwner}) = _$PromotedPawnImpl;
  _PromotedPawn._() : super._();

  @override
  String get id;
  @override
  bool get isKing;
  @override
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$PromotedPawnImplCopyWith<_$PromotedPawnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
