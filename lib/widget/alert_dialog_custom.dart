import 'package:flutter/material.dart';
import 'package:flutter_components/models/item.dart';

class AlertDialogCustom extends StatelessWidget {
  final Item item;
  const AlertDialogCustom({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(item.imageUrl, fit: BoxFit.contain),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              item.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
          ],
        ),
      ],
    );
  }
}
