import 'package:pokemon_gallery/domain/usecase/pokemons_fetch.dart';
import 'package:pokemon_gallery/graphql/pokemons.graphql.dart';
import 'package:pokemon_gallery/domain/repository/pokemons_repository.dart';

class PokemonsFetchInteractor implements PokemonsFetchUseCase {
  final PokemonsRepository _pokemonsRepository;

  PokemonsFetchInteractor({
    required PokemonsRepository pokemonsRepository,
  }) : _pokemonsRepository = pokemonsRepository;

  @override
  Future<List<Query$Pokemons$pokemons?>> execute() async {
    return _pokemonsRepository.fetchPokemons();
  }
}
