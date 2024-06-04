import 'package:flutter/material.dart';
import 'package:graphql_sample/entity/pokemon_overview.dart';
import 'package:graphql_sample/route/router.dart';

class EvolutionListItem extends StatelessWidget {
  const EvolutionListItem({
    super.key,
    required this.pokemon,
  });

  final PokemonOverview pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        PokemonDetailRoute(id: pokemon.id).push(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: ListTile(
          title: Text(pokemon.name),
          leading: Image.network(
            pokemon.image,
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
