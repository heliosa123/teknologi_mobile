import 'package:flutter/material.dart';
import 'package:modul_1/providers/app_state.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    if (appState.favorites.isEmpty) {
      return const Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: const Icon(Icons.favorite),
            title: Text(pair.asLowerCase),

            // SECTION - Add tariling for some buttons icon
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                appState.removeFavorite(pair);
              },
            ),
          ),
      ],
    );
  }
}
