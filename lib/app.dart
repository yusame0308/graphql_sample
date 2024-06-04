import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_sample/infrastructure/graphql/graphql_client.dart';
import 'package:graphql_sample/presentation/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: graphQLClient,
      child: const MaterialApp(
        title: 'GraphQL Pokemon',
        home: HomePage(),
      ),
    );
  }
}
