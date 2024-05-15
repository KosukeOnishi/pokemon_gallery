import 'package:pokemon_gallery/graphql/pokemons.graphql.dart';

abstract class PokemonsRepository {
  Future<List<Query$Pokemons$pokemons?>> fetchPokemons({
    int first = 200,
  });
}