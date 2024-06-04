// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailImpl _$$PokemonDetailImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDetailImpl(
      id: json['id'] as String,
      number: json['number'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      maxHP: (json['maxHP'] as num).toInt(),
      evolutions: (json['evolutions'] as List<dynamic>?)
          ?.map((e) => PokemonOverview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonDetailImplToJson(_$PokemonDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'image': instance.image,
      'maxHP': instance.maxHP,
      'evolutions': instance.evolutions,
    };
