import 'package:flutter_hello_world/domain/model/coffee.dart';

abstract class CoffeeRepository {
  Future<Coffee> getCoffee();
}
