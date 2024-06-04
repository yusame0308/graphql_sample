// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetail _$PokemonDetailFromJson(Map<String, dynamic> json) {
  return _PokemonDetail.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetail {
  String get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get maxHP => throw _privateConstructorUsedError;
  List<PokemonOverview> get evolutions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailCopyWith<PokemonDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailCopyWith<$Res> {
  factory $PokemonDetailCopyWith(
          PokemonDetail value, $Res Function(PokemonDetail) then) =
      _$PokemonDetailCopyWithImpl<$Res, PokemonDetail>;
  @useResult
  $Res call(
      {String id,
      String number,
      String name,
      String image,
      int maxHP,
      List<PokemonOverview> evolutions});
}

/// @nodoc
class _$PokemonDetailCopyWithImpl<$Res, $Val extends PokemonDetail>
    implements $PokemonDetailCopyWith<$Res> {
  _$PokemonDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? image = null,
    Object? maxHP = null,
    Object? evolutions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      maxHP: null == maxHP
          ? _value.maxHP
          : maxHP // ignore: cast_nullable_to_non_nullable
              as int,
      evolutions: null == evolutions
          ? _value.evolutions
          : evolutions // ignore: cast_nullable_to_non_nullable
              as List<PokemonOverview>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDetailImplCopyWith<$Res>
    implements $PokemonDetailCopyWith<$Res> {
  factory _$$PokemonDetailImplCopyWith(
          _$PokemonDetailImpl value, $Res Function(_$PokemonDetailImpl) then) =
      __$$PokemonDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String number,
      String name,
      String image,
      int maxHP,
      List<PokemonOverview> evolutions});
}

/// @nodoc
class __$$PokemonDetailImplCopyWithImpl<$Res>
    extends _$PokemonDetailCopyWithImpl<$Res, _$PokemonDetailImpl>
    implements _$$PokemonDetailImplCopyWith<$Res> {
  __$$PokemonDetailImplCopyWithImpl(
      _$PokemonDetailImpl _value, $Res Function(_$PokemonDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? image = null,
    Object? maxHP = null,
    Object? evolutions = null,
  }) {
    return _then(_$PokemonDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      maxHP: null == maxHP
          ? _value.maxHP
          : maxHP // ignore: cast_nullable_to_non_nullable
              as int,
      evolutions: null == evolutions
          ? _value._evolutions
          : evolutions // ignore: cast_nullable_to_non_nullable
              as List<PokemonOverview>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailImpl extends _PokemonDetail {
  const _$PokemonDetailImpl(
      {required this.id,
      required this.number,
      required this.name,
      required this.image,
      required this.maxHP,
      required final List<PokemonOverview> evolutions})
      : _evolutions = evolutions,
        super._();

  factory _$PokemonDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailImplFromJson(json);

  @override
  final String id;
  @override
  final String number;
  @override
  final String name;
  @override
  final String image;
  @override
  final int maxHP;
  final List<PokemonOverview> _evolutions;
  @override
  List<PokemonOverview> get evolutions {
    if (_evolutions is EqualUnmodifiableListView) return _evolutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolutions);
  }

  @override
  String toString() {
    return 'PokemonDetail(id: $id, number: $number, name: $name, image: $image, maxHP: $maxHP, evolutions: $evolutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.maxHP, maxHP) || other.maxHP == maxHP) &&
            const DeepCollectionEquality()
                .equals(other._evolutions, _evolutions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, name, image, maxHP,
      const DeepCollectionEquality().hash(_evolutions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailImplCopyWith<_$PokemonDetailImpl> get copyWith =>
      __$$PokemonDetailImplCopyWithImpl<_$PokemonDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetail extends PokemonDetail {
  const factory _PokemonDetail(
      {required final String id,
      required final String number,
      required final String name,
      required final String image,
      required final int maxHP,
      required final List<PokemonOverview> evolutions}) = _$PokemonDetailImpl;
  const _PokemonDetail._() : super._();

  factory _PokemonDetail.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailImpl.fromJson;

  @override
  String get id;
  @override
  String get number;
  @override
  String get name;
  @override
  String get image;
  @override
  int get maxHP;
  @override
  List<PokemonOverview> get evolutions;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailImplCopyWith<_$PokemonDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
