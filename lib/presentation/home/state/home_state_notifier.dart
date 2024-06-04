import 'package:graphql_sample/entity/pokemon_overview.dart';
import 'package:graphql_sample/infrastructure/graphql/graphql_client.dart';
import 'package:graphql_sample/infrastructure/graphql/query.graphql.dart';
import 'package:graphql_sample/presentation/home/state/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_state_notifier.g.dart';

@riverpod
class HomeStateNotifier extends _$HomeStateNotifier {
  @override
  HomeState build() {
    return const HomeState(
      pokemons: AsyncValue.loading(),
    );
  }

  Future<void> getPokemons() async {
    state = state.copyWith(pokemons: const AsyncValue.loading());
    final pokemons = await AsyncValue.guard(() async {
      final result = await graphQLClient.value.query$GetPokemons(
        Options$Query$GetPokemons(
          variables: Variables$Query$GetPokemons(count: 50),
        ),
      );
      final pokemonsData = result.data?['pokemons'] as List;
      return pokemonsData
          .map((pokemonData) => PokemonOverview.fromJson(pokemonData))
          .toList();
    });
    state = state.copyWith(pokemons: pokemons);
  }
}
