import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_overview.freezed.dart';
part 'pokemon_overview.g.dart';

@freezed
class PokemonOverview with _$PokemonOverview {
  const PokemonOverview._();

  const factory PokemonOverview({
    required String id,
    required String number,
    required String name,
    required String image,
  }) = _PokemonOverview;

  factory PokemonOverview.fromJson(Map<String, dynamic> json) =>
      _$PokemonOverviewFromJson(json);
}
