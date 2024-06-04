import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_sample/core/extensions/query_hook_result_extension.dart';
import 'package:graphql_sample/infrastructure/graphql/query.graphql.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$GetPokemons(
      Options$Query$GetPokemons(
        variables: Variables$Query$GetPokemons(count: 50),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons'),
      ),
      body: result.when(
        data: (data) {
          final pokemons = data.pokemons!;
          return ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = pokemons[index]!;
              return ListTile(
                title: Text(pokemon.name!),
                subtitle: Text(pokemon.number!),
              );
            },
          );
        },
        error: (error) => Center(child: Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
