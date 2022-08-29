import 'package:flutter/material.dart';

Future<void> showErrorDialog(
  BuildContext context,
  String text,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Error!'),
        content: Text(text),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // the false in pop return as value
            },
            child: const Text('Ok'),
          ),
        ],
      );
    },
  );
} // returns future function of voide type.
