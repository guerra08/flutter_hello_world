import 'dart:convert';

import 'package:flutter_hello_world/data/coffee_repository.dart';
import 'package:flutter_hello_world/domain/model/coffee.dart';
import 'package:http/http.dart' as http;

class HttpCoffeeRepository implements CoffeeRepository {
  final String API_URL = "https://random-data-api.com/api/coffee/random_coffee";

  @override
  Future<Coffee> getCoffee() async {
    final response = await http.get(Uri.parse(API_URL));
    if (response.statusCode == 200) {
      return Coffee.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Falied to get Coffee");
    }
  }
}
