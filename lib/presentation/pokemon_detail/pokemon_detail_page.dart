import 'package:flutter/material.dart';

class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Detail'),
      ),
      body: Center(
        child: Text('Pokemon ID: $id'),
      ),
    );
  }
}
