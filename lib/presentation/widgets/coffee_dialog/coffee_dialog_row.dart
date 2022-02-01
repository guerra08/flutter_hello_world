import 'package:flutter/material.dart';

class CoffeeDialogRow extends StatelessWidget {
  final String name;
  final String value;

  const CoffeeDialogRow({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 16),
              children: [
                TextSpan(
                    text: name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: value),
              ],
            ),
          ),
        )
      ],
    );
  }
}
