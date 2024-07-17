// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$watchlistTotalHash() => r'4a817735a20b47a5fac3f39c9536b19841c571a2';

/// See also [watchlistTotal].
@ProviderFor(watchlistTotal)
final watchlistTotalProvider = AutoDisposeProvider<int>.internal(
  watchlistTotal,
  name: r'watchlistTotalProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchlistTotalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WatchlistTotalRef = AutoDisposeProviderRef<int>;
String _$watchListNotifierHash() => r'486d35093af0159158118ac1dd446682102cd414';

/// See also [WatchListNotifier].
@ProviderFor(WatchListNotifier)
final watchListNotifierProvider =
    AutoDisposeNotifierProvider<WatchListNotifier, Set<Movie>>.internal(
  WatchListNotifier.new,
  name: r'watchListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WatchListNotifier = AutoDisposeNotifier<Set<Movie>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
