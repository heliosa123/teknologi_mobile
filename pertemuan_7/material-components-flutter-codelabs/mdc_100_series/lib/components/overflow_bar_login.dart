import 'package:flutter/material.dart';

class OverflowBarLogin extends StatelessWidget {
  const OverflowBarLogin({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return OverflowBar(
      alignment: MainAxisAlignment.end,
      // TODO: Add a beveled rectangular border to CANCEL (103)
      children: <Widget>[
        // TODO: Add buttons (101)
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            // TODO: Clear the text fields (101)
            usernameController.clear();
            passwordController.clear();
          },
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.secondary,
          ),
        ),
        // TODO: Add an elevation to NEXT (103)
        // TODO: Add a beveled rectangular border to NEXT (103)
        ElevatedButton(
          child: Text('NEXT'),
          onPressed: () {
            // TODO: Show the next page (101)
            Navigator.pushNamed(context, '/');
          },
          style: ElevatedButton.styleFrom(
            elevation: 3.0,
            backgroundColor: Theme.of(context)
                .colorScheme
                .primary, // Warna latar belakang dari tema
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
            ),
          ),
        ),
      ],
    );
  }
}
