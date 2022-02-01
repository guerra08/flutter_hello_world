import 'package:flutter/material.dart';
import 'package:flutter_hello_world/domain/model/coffee.dart';
import 'package:flutter_hello_world/presentation/widgets/coffee_dialog/coffee_dialog_row.dart';

class CoffeeDialog extends StatelessWidget {
  final Coffee coffee;

  const CoffeeDialog({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CoffeeDialogRow(name: "Variety: ", value: coffee.variety),
        CoffeeDialogRow(name: "Notes: ", value: coffee.notes),
        CoffeeDialogRow(name: "Intensifier: ", value: coffee.intensifier),
      ],
    );
  }
}
