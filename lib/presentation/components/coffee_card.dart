import 'package:flutter/material.dart';
import 'package:flutter_hello_world/domain/model/coffee.dart';
import 'package:flutter_hello_world/presentation/components/coffee_dialog.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;

  const CoffeeCard({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.coffee),
              title: Text(coffee.blendName),
              subtitle: Text(coffee.origin),
            )
          ],
        ),
        onTap: () => showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text(coffee.blendName),
                  content: CoffeeDialog(
                    coffee: coffee,
                  ),
                )),
      ),
    );
  }
}
