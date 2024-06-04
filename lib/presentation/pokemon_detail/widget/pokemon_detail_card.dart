import 'package:flutter/material.dart';
import 'package:graphql_sample/entity/pokemon_detail.dart';

class PokemonDetailCard extends StatelessWidget {
  const PokemonDetailCard({
    super.key,
    required this.data,
  });

  final PokemonDetail data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          data.image,
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 24),
        Text(
          data.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          data.number,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'MaxHP: ${data.maxHP}',
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
