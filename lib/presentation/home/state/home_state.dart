import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_sample/entity/pokemon_overview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required AsyncValue<List<PokemonOverview>> pokemons,
  }) = _HomeState;
}
