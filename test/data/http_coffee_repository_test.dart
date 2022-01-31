import 'package:flutter_hello_world/data/http_coffee_repository.dart';
import 'package:flutter_hello_world/domain/model/coffee.dart';
import 'package:flutter_test/flutter_test.dart';

final HttpCoffeeRepository repository = HttpCoffeeRepository();

void main() {
  test("should return a new coffee from a network request", () async {
    Coffee coffee = await repository.getCoffee();

    expect(coffee.uid.isNotEmpty, true);
  });
}
