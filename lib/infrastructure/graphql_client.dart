import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:pokemon_gallery/infrastructure/link_provider.dart';

part 'graphql_client.g.dart';

@Riverpod(keepAlive: true)
GraphQLClient graphQlClient(
  GraphQlClientRef ref, {
  HttpLink? link,
}) {
  return GraphQLClient(
    link: link ?? ref.watch(linkProvider),
    cache: GraphQLCache(store: HiveStore()),
  );
}
