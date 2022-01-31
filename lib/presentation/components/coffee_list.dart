import 'package:flutter/material.dart';
import 'package:flutter_hello_world/domain/model/coffee.dart';

/// Widget to display a list of Coffee Cards
class CoffeeList extends StatelessWidget {
  final List<Coffee> coffees;

  const CoffeeList({this.coffees = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: coffees
          .map((coffee) => Card(
                child: Text(coffee.blendName),
                color: Colors.grey[300],
              ))
          .toList(),
    );
  }
}
