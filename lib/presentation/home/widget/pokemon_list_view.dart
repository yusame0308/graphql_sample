import 'package:flutter/material.dart';
import 'package:graphql_sample/entity/pokemon_overview.dart';
import 'package:graphql_sample/presentation/home/state/home_state_notifier.dart';
import 'package:graphql_sample/presentation/home/widget/pokemon_list_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PokemonListView extends ConsumerWidget {
  const PokemonListView({
    super.key,
    required this.pokemons,
  });

  final List<PokemonOverview> pokemons;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: () async {
        await ref.read(homeStateNotifierProvider.notifier).getPokemons();
      },
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          final pokemon = pokemons[index];
          return PokemonListItem(pokemon: pokemon);
        },
        separatorBuilder: (context, index) {
          return const Divider(height: 0);
        },
      ),
    );
  }
}
