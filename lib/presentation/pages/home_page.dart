import 'package:flutter/material.dart';
import 'package:flutter_hello_world/data/http_coffee_repository.dart';
import 'package:flutter_hello_world/domain/model/coffee.dart';
import 'package:flutter_hello_world/presentation/components/coffee_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

/// Home Page that displays a list of coffees
class _HomePageState extends State<HomePage> {
  HttpCoffeeRepository repository = HttpCoffeeRepository();

  List<Coffee> _coffees = [];
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nice Coffees!'),
      ),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : _coffees.isEmpty
                ? const Text("Press the + button to get a random coffee!")
                : CoffeeList(
                    coffees: _coffees,
                  ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          setState(() {
            _isLoading = true;
          });
          Coffee coffee = await repository.getCoffee();
          setState(() {
            _coffees = [..._coffees, coffee];
            _isLoading = false;
          });
        },
      ),
    );
  }
}