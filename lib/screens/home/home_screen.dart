import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/movies_providers.dart';
import '../../provider/watchlist_provider.dart';
import '../../shared/watchlist_icon.dart';

// ConsumerWidget intended only for StatelessWidget
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allMovies = ref.watch(moviesProvider);
    final watchlilst = ref.watch(watchListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Finder'),
        actions: const [WatchListIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: allMovies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // mainAxisSpacing: 20,
            // crossAxisSpacing: 20,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey.withOpacity(0.05),
              child: Column(
                children: [
                  Image.network(
                    allMovies[index].image,
                    fit: BoxFit.contain,
                    height: 300,
                  ),
                  Text(allMovies[index].title),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star),
                      Text(allMovies[index].rating.toString()),
                    ],
                  ),
                  if (watchlilst.contains(allMovies[index]))
                    TextButton(
                      onPressed: () {
                        ref
                            .read(watchListNotifierProvider.notifier)
                            .removeMovie(allMovies[index]);
                      },
                      child: const Text('Remove'),
                    ),
                  if (!watchlilst.contains(allMovies[index]))
                    TextButton(
                      onPressed: () {
                        // read used to access the method
                        ref
                            .read(watchListNotifierProvider.notifier)
                            .addMovie(allMovies[index]);
                      },
                      child: const Text('Add to watchlist'),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
