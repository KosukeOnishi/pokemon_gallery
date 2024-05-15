import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_gallery/application/usecase_impl/pokemons_fetch.dart';
import 'package:pokemon_gallery/domain/usecase/pokemons_fetch.dart';
import 'package:pokemon_gallery/infrastructure/impl_provider/repository/pokemons_repository_provider.dart';

final pokemonsFetchUseCaseProvider = Provider<PokemonsFetchUseCase>((ref) {
  return PokemonsFetchInteractor(
    pokemonsRepository: ref.read(pokemonsRepositoryProvider),
  );
});
