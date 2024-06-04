import 'package:flutter/material.dart';
import 'package:graphql_sample/entity/pokemon.dart';
import 'package:graphql_sample/route/router.dart';

class PokemonListItem extends StatelessWidget {
  const PokemonListItem({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        PokemonDetailRoute(id: pokemon.id).go(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Image.network(
              pokemon.image,
              width: 70,
              height: 70,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pokemon.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  pokemon.number,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
