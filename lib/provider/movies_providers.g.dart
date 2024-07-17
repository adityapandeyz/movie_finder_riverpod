// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moviesHash() => r'5c938c3719e05c8b78d88c1ea24dca0564881e75';

/// See also [movies].
@ProviderFor(movies)
final moviesProvider = AutoDisposeProvider<List<Movie>>.internal(
  movies,
  name: r'moviesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$moviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MoviesRef = AutoDisposeProviderRef<List<Movie>>;
String _$lowRatedMoviesHash() => r'8af336cd00f401fdf77441e3c695edc863210457';

/// See also [lowRatedMovies].
@ProviderFor(lowRatedMovies)
final lowRatedMoviesProvider = AutoDisposeProvider<List<Movie>>.internal(
  lowRatedMovies,
  name: r'lowRatedMoviesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$lowRatedMoviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LowRatedMoviesRef = AutoDisposeProviderRef<List<Movie>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
