import 'package:flutter/material.dart';
import 'package:graphql_sample/entity/pokemon_overview.dart';
import 'package:graphql_sample/presentation/pokemon_detail/widget/evolution_list_item.dart';

class EvolutionListView extends StatelessWidget {
  const EvolutionListView({
    super.key,
    required this.pokemons,
  });

  final List<PokemonOverview> pokemons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: pokemons.length,
      itemBuilder: (context, index) {
        final pokemon = pokemons[index];
        return EvolutionListItem(pokemon: pokemon);
      },
    );
  }
}
