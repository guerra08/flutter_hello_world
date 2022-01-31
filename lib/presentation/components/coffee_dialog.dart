import 'package:flutter/material.dart';
import 'package:flutter_hello_world/domain/model/coffee.dart';

class CoffeeDialog extends StatelessWidget {
  final Coffee coffee;

  const CoffeeDialog({required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        children: [
          const Text(
            "Variety: ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: Text(coffee.variety)),
        ],
      ),
      Row(
        children: [
          const Text(
            "Notes: ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: Text(coffee.notes)),
        ],
      ),
      Row(
        children: [
          const Text(
            "Intensifier: ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: Text(coffee.intensifier)),
        ],
      ),
    ]);
  }
}
