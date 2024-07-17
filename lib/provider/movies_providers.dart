import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/movie.dart';

part 'movies_providers.g.dart';

const List<Movie> allMovies = [
  Movie(
    id: 1,
    title: 'HxH: Last Mission',
    rating: 6,
    image:
        'https://upload.wikimedia.org/wikipedia/en/b/b3/Hunter_x_Hunter_The_Last_Mission_poster.png',
  ),
  Movie(
    id: 2,
    title: 'There Will Be Blood',
    rating: 9,
    image:
        'https://m.media-amazon.com/images/S/pv-target-images/e2ecadba6c2182e1b91a5efccde86f7944b3ff09bd3b978345fb2bc0c950df37.jpg',
  ),
  Movie(
    id: 3,
    title: '1917',
    rating: 8,
    image:
        'https://m.media-amazon.com/images/S/pv-target-images/379ce2e2cfb57394f1727db2f8e95ae54755a36f093decdbd7463fc7750e18b8.jpg',
  ),
  Movie(
    id: 4,
    title: 'RRR',
    rating: 7,
    image:
        'https://m.media-amazon.com/images/M/MV5BOGEzYzcxYjAtZmZiNi00YzI0LWIyY2YtOTM0MDFjODU2YTZiXkEyXkFqcGdeQXVyMTQ3Mzk2MDg4._V1_.jpg',
  ),
];

// provides read only data
// final lowRatingsProvider = Provider((ref) {
//   return allMovies.where((movie) => movie.rating < 7).toList();
// });

// generated providers
@riverpod
List<Movie> movies(ref) {
  return allMovies;
}

@riverpod
List<Movie> lowRatedMovies(ref) {
  return allMovies.where((movie) => movie.rating < 7).toList();
}
