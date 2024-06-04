import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_sample/entity/pokemon_detail.dart';
import 'package:graphql_sample/infrastructure/graphql/graphql_client.dart';
import 'package:graphql_sample/infrastructure/graphql/query.graphql.dart';

UsePokemonDetail usePokemonDetail({required String id}) {
  final data = useState<PokemonDetail?>(null);

  // GraphQLからポケモンの詳細情報を取得
  Future<void> getPokemonDetail({required String id}) async {
    final result = await graphQLClient.value.query$GetPokemon(
      Options$Query$GetPokemon(
        variables: Variables$Query$GetPokemon(id: id),
      ),
    );
    final pokemonData = result.data?['pokemon'];
    data.value = PokemonDetail.fromJson(pokemonData);
  }

  // 初回レンダリング時にポケモンの詳細情報を取得
  useEffect(() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getPokemonDetail(id: id);
    });
    return null;
  }, []);

  return UsePokemonDetail(
    data: data.value,
  );
}

class UsePokemonDetail {
  final PokemonDetail? data;

  UsePokemonDetail({
    required this.data,
  });
}
