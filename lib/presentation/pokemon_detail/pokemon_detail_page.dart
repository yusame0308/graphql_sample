import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_sample/entity/pokemon_detail.dart';
import 'package:graphql_sample/presentation/pokemon_detail/hook/use_pokemon_detail.dart';
import 'package:graphql_sample/presentation/pokemon_detail/widget/evolution_list_view.dart';
import 'package:graphql_sample/presentation/pokemon_detail/widget/pokemon_detail_card.dart';

class PokemonDetailPage extends HookWidget {
  const PokemonDetailPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final pokemonDetailHook = usePokemonDetail(id: id);
    final data = pokemonDetailHook.data;

    return Scaffold(
      appBar: AppBar(
        title: Text(data?.name ?? ''),
      ),
      body: data == null
          ? const Center(child: CircularProgressIndicator())
          : _Body(data: data),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.data,
  });

  final PokemonDetail data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PokemonDetailCard(data: data),
        if (data.evolutions != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Divider(height: 96),
                EvolutionListView(pokemons: data.evolutions!),
              ],
            ),
          )
      ],
    );
  }
}
