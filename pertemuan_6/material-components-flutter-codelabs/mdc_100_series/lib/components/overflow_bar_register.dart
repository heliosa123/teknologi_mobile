import 'package:flutter/material.dart';

class OverflowBarRegister extends StatelessWidget {
  const OverflowBarRegister({
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
      children: <Widget>[
        TextButton(
          child: const Text('Hapus'),
          onPressed: () {
            usernameController.clear();
            passwordController.clear();
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context)
                .colorScheme
                .primary, // Warna latar belakang dari tema
            foregroundColor:
                Theme.of(context).colorScheme.onPrimary, // Warna teks dari tema
          ),
          child: const Text('Daftar'),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
      ],
    );
  }
}
