import 'package:flutter_hello_world/data/coffee_repository.dart';
import 'package:flutter_hello_world/data/http_coffee_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<CoffeeRepository>(HttpCoffeeRepository());
}
