import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:pokemon_gallery/infrastructure/impl_provider/usecase/pokemons_fetch_provider.dart';
import 'package:pokemon_gallery/domain/usecase/pokemons_fetch.dart';
import 'package:pokemon_gallery/graphql/pokemons.graphql.dart';

part 'pokemon_list_controller.g.dart';

@riverpod
class PokemonListController extends _$PokemonListController {
  @override
  Future<List<Query$Pokemons$pokemons?>> build({
    PokemonsFetchUseCase? pokemonsFetchUseCase,
  }) async {
    final useCase = pokemonsFetchUseCase ?? ref.watch(pokemonsFetchUseCaseProvider);
    return await useCase?.execute() ?? [];
  }
}
