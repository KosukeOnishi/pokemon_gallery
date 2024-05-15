// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonListControllerHash() =>
    r'0d7617afcdfdd44a2ae9e130660c8d753835db44';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PokemonListController
    extends BuildlessAutoDisposeAsyncNotifier<List<Query$Pokemons$pokemons?>> {
  late final PokemonsFetchUseCase? pokemonsFetchUseCase;

  FutureOr<List<Query$Pokemons$pokemons?>> build({
    PokemonsFetchUseCase? pokemonsFetchUseCase,
  });
}

/// See also [PokemonListController].
@ProviderFor(PokemonListController)
const pokemonListControllerProvider = PokemonListControllerFamily();

/// See also [PokemonListController].
class PokemonListControllerFamily
    extends Family<AsyncValue<List<Query$Pokemons$pokemons?>>> {
  /// See also [PokemonListController].
  const PokemonListControllerFamily();

  /// See also [PokemonListController].
  PokemonListControllerProvider call({
    PokemonsFetchUseCase? pokemonsFetchUseCase,
  }) {
    return PokemonListControllerProvider(
      pokemonsFetchUseCase: pokemonsFetchUseCase,
    );
  }

  @override
  PokemonListControllerProvider getProviderOverride(
    covariant PokemonListControllerProvider provider,
  ) {
    return call(
      pokemonsFetchUseCase: provider.pokemonsFetchUseCase,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonListControllerProvider';
}

/// See also [PokemonListController].
class PokemonListControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PokemonListController,
        List<Query$Pokemons$pokemons?>> {
  /// See also [PokemonListController].
  PokemonListControllerProvider({
    PokemonsFetchUseCase? pokemonsFetchUseCase,
  }) : this._internal(
          () => PokemonListController()
            ..pokemonsFetchUseCase = pokemonsFetchUseCase,
          from: pokemonListControllerProvider,
          name: r'pokemonListControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonListControllerHash,
          dependencies: PokemonListControllerFamily._dependencies,
          allTransitiveDependencies:
              PokemonListControllerFamily._allTransitiveDependencies,
          pokemonsFetchUseCase: pokemonsFetchUseCase,
        );

  PokemonListControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonsFetchUseCase,
  }) : super.internal();

  final PokemonsFetchUseCase? pokemonsFetchUseCase;

  @override
  FutureOr<List<Query$Pokemons$pokemons?>> runNotifierBuild(
    covariant PokemonListController notifier,
  ) {
    return notifier.build(
      pokemonsFetchUseCase: pokemonsFetchUseCase,
    );
  }

  @override
  Override overrideWith(PokemonListController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PokemonListControllerProvider._internal(
        () => create()..pokemonsFetchUseCase = pokemonsFetchUseCase,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonsFetchUseCase: pokemonsFetchUseCase,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PokemonListController,
      List<Query$Pokemons$pokemons?>> createElement() {
    return _PokemonListControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonListControllerProvider &&
        other.pokemonsFetchUseCase == pokemonsFetchUseCase;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonsFetchUseCase.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonListControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Query$Pokemons$pokemons?>> {
  /// The parameter `pokemonsFetchUseCase` of this provider.
  PokemonsFetchUseCase? get pokemonsFetchUseCase;
}

class _PokemonListControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PokemonListController,
        List<Query$Pokemons$pokemons?>> with PokemonListControllerRef {
  _PokemonListControllerProviderElement(super.provider);

  @override
  PokemonsFetchUseCase? get pokemonsFetchUseCase =>
      (origin as PokemonListControllerProvider).pokemonsFetchUseCase;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
