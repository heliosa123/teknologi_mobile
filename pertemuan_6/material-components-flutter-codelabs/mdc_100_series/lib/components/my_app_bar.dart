import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.colorScheme.primary,
      leading: IconButton(
        color: theme.colorScheme.onPrimary,
        icon: const Icon(
          Icons.menu,
          semanticLabel: 'menu',
        ),
        onPressed: () {
          print('Menu Button');
        },
      ),
      title: Text(
        'SHRINE',
        style: theme.textTheme.headlineMedium!.copyWith(
          color: theme.colorScheme.onPrimary, // Menggunakan warna dari tema
        ),
      ),
      actions: <Widget>[
        IconButton(
          color: theme.colorScheme.onPrimary,
          icon: const Icon(
            Icons.search,
            semanticLabel: 'search',
          ),
          onPressed: () {
            print('Search Button');
          },
        ),
        IconButton(
          color: theme.colorScheme.onPrimary,
          icon: const Icon(
            Icons.tune,
            semanticLabel: 'fliter',
          ),
          onPressed: () {
            print('Filter button');
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
