// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$graphQlClientHash() => r'41246dffee58751c4647e7750e95bed9db7a93ec';

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

/// See also [graphQlClient].
@ProviderFor(graphQlClient)
const graphQlClientProvider = GraphQlClientFamily();

/// See also [graphQlClient].
class GraphQlClientFamily extends Family<GraphQLClient> {
  /// See also [graphQlClient].
  const GraphQlClientFamily();

  /// See also [graphQlClient].
  GraphQlClientProvider call({
    HttpLink? link,
  }) {
    return GraphQlClientProvider(
      link: link,
    );
  }

  @override
  GraphQlClientProvider getProviderOverride(
    covariant GraphQlClientProvider provider,
  ) {
    return call(
      link: provider.link,
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
  String? get name => r'graphQlClientProvider';
}

/// See also [graphQlClient].
class GraphQlClientProvider extends AutoDisposeProvider<GraphQLClient> {
  /// See also [graphQlClient].
  GraphQlClientProvider({
    HttpLink? link,
  }) : this._internal(
          (ref) => graphQlClient(
            ref as GraphQlClientRef,
            link: link,
          ),
          from: graphQlClientProvider,
          name: r'graphQlClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$graphQlClientHash,
          dependencies: GraphQlClientFamily._dependencies,
          allTransitiveDependencies:
              GraphQlClientFamily._allTransitiveDependencies,
          link: link,
        );

  GraphQlClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.link,
  }) : super.internal();

  final HttpLink? link;

  @override
  Override overrideWith(
    GraphQLClient Function(GraphQlClientRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GraphQlClientProvider._internal(
        (ref) => create(ref as GraphQlClientRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        link: link,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<GraphQLClient> createElement() {
    return _GraphQlClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GraphQlClientProvider && other.link == link;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, link.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GraphQlClientRef on AutoDisposeProviderRef<GraphQLClient> {
  /// The parameter `link` of this provider.
  HttpLink? get link;
}

class _GraphQlClientProviderElement
    extends AutoDisposeProviderElement<GraphQLClient> with GraphQlClientRef {
  _GraphQlClientProviderElement(super.provider);

  @override
  HttpLink? get link => (origin as GraphQlClientProvider).link;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
