# Movie Finder App

A Flutter application for finding movies, utilizing Riverpod for state management. This app also leverages `riverpod_generator`, `build_runner`, and `riverpod_annotation` for provider generation and annotations.

## Features

- List all movies
- Add or remove movies from the watchlist
- View movies in the watchlist

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart: [Install Dart](https://dart.dev/get-dart)
- An IDE like Visual Studio Code or Android Studio

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/movie_finder_app.git
    cd movie_finder_app
    ```

2. Install dependencies:
    ```sh
    flutter pub get
    ```

3. Generate Riverpod providers:
    ```sh
    flutter pub run build_runner build
    ```

### Running the App

To run the app on an emulator or connected device, use:
```sh
flutter run
```

## Project Structure

```
lib/
│
├── main.dart                    # Entry point of the app
├── models/                      # Data models
│   └── movie.dart               # Movie model
│
├── providers/                   # Riverpod providers
│   ├── movie_provider.dart      # Provider for fetching movies
│   ├── watchlist_provider.dart  # Provider for managing watchlist
│   └── movie_provider.g.dart    # Generated provider file
│
├── repository/                  # Repository for data handling
│   └── movie_repository.dart    # Movie repository
│
├── screens/                     # UI screens
│   ├── home_screen.dart         # Home screen with movie list
│   └── watchlist_screen.dart    # Watchlist screen
│
└── shared/                       # Utility functions and constants
    └── watchlist_icon.dart          # API client for network requests
```

## State Management with Riverpod

This app uses Riverpod for state management. Providers are defined and annotated using `riverpod_annotation`, and the code is generated with `riverpod_generator` and `build_runner`.

### Example Providers

#### Movie Provider

```dart
// providers/movie_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repository/movie_repository.dart';
import '../models/movie.dart';

part 'movie_provider.g.dart';

@riverpod
Future<List<Movie>> movieProvider(MovieRef ref) async {
  final repository = ref.read(movieRepositoryProvider);
  return repository.getMovies();
}
```

#### Watchlist Provider

```dart
// providers/watchlist_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/movie.dart';

part 'watchlist_provider.g.dart';

@riverpod
class Watchlist extends _$Watchlist {
  @override
  List<Movie> build() => [];

  void addMovie(Movie movie) {
    state = [...state, movie];
  }

  void removeMovie(Movie movie) {
    state = state.where((m) => m.id != movie.id).toList();
  }
}
```

### Generated Provider

```dart
// providers/movie_provider.g.dart

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_provider.dart';

@ProviderFor(movieProvider)
final movieProviderProvider = AutoDisposeFutureProvider<List<Movie>>.internal(
  movieProvider,
  name: 'movieProviderProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$movieProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieProviderRef = AutoDisposeFutureProviderRef<List<Movie>>;
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
