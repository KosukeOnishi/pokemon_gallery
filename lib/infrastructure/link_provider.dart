import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'link_provider.g.dart';

@riverpod
HttpLink link(LinkRef ref) {
  return HttpLink('https://graphql-pokemon2.vercel.app');
}