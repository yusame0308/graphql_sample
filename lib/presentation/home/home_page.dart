import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_sample/presentation/home/state/home_state_notifier.dart';
import 'package:graphql_sample/presentation/home/widget/pokemon_list_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await ref.read(homeStateNotifierProvider.notifier).getPokemons();
      });
      return null;
    }, const []);

    final pokemons = ref.watch(
      homeStateNotifierProvider.select((state) => state.pokemons),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons'),
      ),
      body: pokemons.when(
        data: (data) => PokemonListView(pokemons: data),
        error: (error, _) => Center(child: Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
