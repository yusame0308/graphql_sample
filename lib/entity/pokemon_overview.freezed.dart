// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonOverview _$PokemonOverviewFromJson(Map<String, dynamic> json) {
  return _PokemonOverview.fromJson(json);
}

/// @nodoc
mixin _$PokemonOverview {
  String get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonOverviewCopyWith<PokemonOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonOverviewCopyWith<$Res> {
  factory $PokemonOverviewCopyWith(
          PokemonOverview value, $Res Function(PokemonOverview) then) =
      _$PokemonOverviewCopyWithImpl<$Res, PokemonOverview>;
  @useResult
  $Res call({String id, String number, String name, String image});
}

/// @nodoc
class _$PokemonOverviewCopyWithImpl<$Res, $Val extends PokemonOverview>
    implements $PokemonOverviewCopyWith<$Res> {
  _$PokemonOverviewCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonOverviewImplCopyWith<$Res>
    implements $PokemonOverviewCopyWith<$Res> {
  factory _$$PokemonOverviewImplCopyWith(_$PokemonOverviewImpl value,
          $Res Function(_$PokemonOverviewImpl) then) =
      __$$PokemonOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String number, String name, String image});
}

/// @nodoc
class __$$PokemonOverviewImplCopyWithImpl<$Res>
    extends _$PokemonOverviewCopyWithImpl<$Res, _$PokemonOverviewImpl>
    implements _$$PokemonOverviewImplCopyWith<$Res> {
  __$$PokemonOverviewImplCopyWithImpl(
      _$PokemonOverviewImpl _value, $Res Function(_$PokemonOverviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$PokemonOverviewImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonOverviewImpl extends _PokemonOverview {
  const _$PokemonOverviewImpl(
      {required this.id,
      required this.number,
      required this.name,
      required this.image})
      : super._();

  factory _$PokemonOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonOverviewImplFromJson(json);

  @override
  final String id;
  @override
  final String number;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'PokemonOverview(id: $id, number: $number, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonOverviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonOverviewImplCopyWith<_$PokemonOverviewImpl> get copyWith =>
      __$$PokemonOverviewImplCopyWithImpl<_$PokemonOverviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonOverviewImplToJson(
      this,
    );
  }
}

abstract class _PokemonOverview extends PokemonOverview {
  const factory _PokemonOverview(
      {required final String id,
      required final String number,
      required final String name,
      required final String image}) = _$PokemonOverviewImpl;
  const _PokemonOverview._() : super._();

  factory _PokemonOverview.fromJson(Map<String, dynamic> json) =
      _$PokemonOverviewImpl.fromJson;

  @override
  String get id;
  @override
  String get number;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$PokemonOverviewImplCopyWith<_$PokemonOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
