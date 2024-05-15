import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:pokemon_gallery/graphql/pokemons.graphql.dart';
import 'package:pokemon_gallery/domain/repository/pokemons_repository.dart';

class PokemonsRepositoryImpl implements PokemonsRepository {
  final GraphQLClient _client;

  PokemonsRepositoryImpl({
    required GraphQLClient client,
  }) : _client = client;

  @override
  Future<List<Query$Pokemons$pokemons?>> fetchPokemons({
    int first = 200,
  }) async {
    final queryResult = await _client.query$Pokemons(
      Options$Query$Pokemons(
        variables: Variables$Query$Pokemons(first: first),
      ),
    );
    return queryResult.parsedData?.pokemons ?? [];
  }
}
