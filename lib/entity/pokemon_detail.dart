import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_sample/entity/pokemon_overview.dart';

part 'pokemon_detail.freezed.dart';
part 'pokemon_detail.g.dart';

@freezed
class PokemonDetail with _$PokemonDetail {
  const PokemonDetail._();

  const factory PokemonDetail({
    required String id,
    required String number,
    required String name,
    required String image,
    required int maxHP,
    required List<PokemonOverview>? evolutions,
  }) = _PokemonDetail;

  factory PokemonDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFromJson(json);
}
