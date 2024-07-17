import 'package:flutter/material.dart';

import '../screens/watchlist/watchlist_screen.dart';

class WatchListIcon extends StatelessWidget {
  const WatchListIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const WatchListScreen();
            }));
          },
          icon: const Icon(Icons.watch_later),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            width: 18,
            height: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}
