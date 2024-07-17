import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/movie.dart';

class WatchListNotifier extends Notifier<Set<Movie>> {
  // initial value
  @override
  Set<Movie> build() {
    return {
      const Movie(
        id: 1,
        title: 'HxH: Last Mission',
        rating: 6,
        image:
            'https://upload.wikimedia.org/wikipedia/en/b/b3/Hunter_x_Hunter_The_Last_Mission_poster.png',
      ),
    };
  }

  // method to update state
  void addMovie(Movie movie) {
    if (!state.contains(movie)) {
      state = {...state, movie};
    }
  }

  // method to update state
  void removeMovie(Movie movie) {
    if (state.contains(movie)) {
      state = state.where((m) => m.id != movie.id).toSet();
    }
  }
}

final watchListNotifierProvider =
    NotifierProvider<WatchListNotifier, Set<Movie>>(() {
  return WatchListNotifier();
});
