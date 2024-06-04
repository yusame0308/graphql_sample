import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final graphQLClient = ValueNotifier(
  GraphQLClient(
    link: HttpLink('https://graphql-pokemon2.vercel.app'),
    cache: GraphQLCache(store: HiveStore()),
  ),
);
