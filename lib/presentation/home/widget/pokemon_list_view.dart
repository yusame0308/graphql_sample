import 'package:flutter/material.dart';
import 'package:graphql_sample/entity/pokemon.dart';
import 'package:graphql_sample/presentation/home/widget/pokemon_list_item.dart';

class PokemonListView extends StatelessWidget {
  const PokemonListView({
    super.key,
    required this.pokemons,
  });

  final List<Pokemon> pokemons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: pokemons.length,
      itemBuilder: (context, index) {
        final pokemon = pokemons[index];
        return PokemonListItem(pokemon: pokemon);
      },
      separatorBuilder: (context, index) {
        return const Divider(height: 0);
      },
    );
  }
}
