import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  /// Holds the [AlertDialog] title.
  final String title;

  /// Holds the [AlertDialog] content.
  final String message;

  const InfoDialog({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w900),
      ),
      content: Text(message),
      actions: [
        ElevatedButton(
            onPressed: () => Navigator.pop(context), child: const Text('OK'))
      ],
    );
  }
}
