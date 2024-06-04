import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_sample/presentation/home/home_page.dart';
import 'package:graphql_sample/presentation/pokemon_detail/pokemon_detail_page.dart';

part 'router.g.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: $appRoutes,
);

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<PokemonDetailRoute>(path: 'pokemon_detail'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class PokemonDetailRoute extends GoRouteData {
  const PokemonDetailRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      PokemonDetailPage(id: id);
}
