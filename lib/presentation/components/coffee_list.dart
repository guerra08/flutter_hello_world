import 'package:flutter/material.dart';
import 'package:flutter_hello_world/domain/model/coffee.dart';
import 'package:flutter_hello_world/presentation/components/coffee_card.dart';
import 'package:flutter_hello_world/presentation/components/coffee_dialog.dart';

/// Widget to display a list of Coffee Cards
class CoffeeList extends StatelessWidget {
  final List<Coffee> coffees;

  const CoffeeList({this.coffees = const []});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: coffees.map((coffee) => CoffeeCard(coffee: coffee)).toList(),
    );
  }
}
