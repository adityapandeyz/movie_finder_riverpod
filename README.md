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

- Immutability: Riverpod encourages immutable state, which can lead to more predictable and manageable code.

- Safety: It avoids many common mistakes that can occur with other state management solutions, like incorrect usage of BuildContext or unintentional re-renders.

- Flexibility: It can handle both simple and complex state management needs, making it suitable for various application sizes.

- Provider-independent: Unlike the Provider package, Riverpod does not rely on Flutter's InheritedWidget, which can make it more robust and easier to use in different scenarios.

- Compile-time safety: Riverpod offers compile-time safety checks, reducing runtime errors and improving code quality.

- Testing: Riverpod makes testing state management easier because it allows for greater separation of concerns and easier dependency injection.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
