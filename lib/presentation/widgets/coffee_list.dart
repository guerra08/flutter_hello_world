import 'package:flutter/material.dart';

import 'package:flutter_hello_world/domain/model/coffee.dart';
import 'package:flutter_hello_world/presentation/widgets/coffee_card.dart';

/// Widget to display a list of Coffee Cards
class CoffeeList extends StatelessWidget {
  final List<Coffee> coffees;
  final Function onDismissCoffee;

  const CoffeeList({
    Key? key,
    this.coffees = const [],
    required this.onDismissCoffee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: coffees
          .map((coffee) => Dismissible(
              key: Key(coffee.uid),
              onDismissed: (direction) => onDismissCoffee(coffee),
              background: Container(
                color: Colors.red,
              ),
              child: CoffeeCard(coffee: coffee)))
          .toList(),
    );
  }
}
