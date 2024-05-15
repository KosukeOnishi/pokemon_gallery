import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pokemon_gallery/graphql/pokemons.graphql.dart';
import 'package:pokemon_gallery/presentation/pokemon_list_controller.dart';

class PokemonList extends ConsumerWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Query$Pokemons$pokemons?>> state = ref.watch(pokemonListControllerProvider());
        
    return Center(
      child: switch (state) {
        AsyncError() => const Text('Oops, something unexpected happened'),
        AsyncData(value: final pokemons) => ListView.builder(
          itemCount: pokemons.length,
          itemBuilder: (context, index) {
            final pokemon = pokemons[index];
            return ListTile(
              leading: Image.network(
                pokemon?.image ?? '',
                height: 40,
                width: 50,
              ),
              title: Text(
                pokemon?.name ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2b2b2b),
                ),
              ),
            );
          },
        ),
        _ => const CircularProgressIndicator(),
      }
    );
  }
}
