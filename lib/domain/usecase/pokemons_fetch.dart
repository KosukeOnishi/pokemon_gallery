import 'package:pokemon_gallery/graphql/pokemons.graphql.dart';

abstract class PokemonsFetchUseCase {
  Future<List<Query$Pokemons$pokemons?>> execute();
}