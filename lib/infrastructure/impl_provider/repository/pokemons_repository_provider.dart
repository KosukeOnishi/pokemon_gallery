import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_gallery/infrastructure/graphql_client.dart';
import 'package:pokemon_gallery/infrastructure/repository_impl/pokemons_repository_impl.dart';
import 'package:pokemon_gallery/domain/repository/pokemons_repository.dart';

final pokemonsRepositoryProvider = Provider<PokemonsRepository>((ref) {
  return PokemonsRepositoryImpl(
    client: ref.read(GraphQlClientProvider()),
  );
});
