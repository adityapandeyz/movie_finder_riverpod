import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/movie.dart';

part 'watchlist_provider.g.dart';

@riverpod
class WatchListNotifier extends _$WatchListNotifier {
  // initial value
  @override
  Set<Movie> build() {
    return {};
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

// final watchListNotifierProvider =
//     NotifierProvider<WatchListNotifier, Set<Movie>>(() {
//   return WatchListNotifier();
// });

// dependent provider
@riverpod
int watchlistTotal(ref) {
  final watchlist = ref.watch(watchListNotifierProvider);
  int total = 0;
  for (Movie movie in watchlist) {
    total += 1;
  }

  return total;
}
