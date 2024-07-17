import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/watchlist_provider.dart';

class WatchListScreen extends ConsumerStatefulWidget {
  const WatchListScreen({super.key});

  @override
  ConsumerState<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends ConsumerState<WatchListScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final watchlist = ref.watch(watchListNotifierProvider);
    final total = ref.watch(watchlistTotalProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Watchlist ($total)'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: watchlist.map((movie) {
                return Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        movie.image,
                        fit: BoxFit.contain,
                        height: 100,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(movie.title),
                      const Spacer(),
                      const Icon(Icons.star),
                      Text(
                        movie.rating.toString(),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
