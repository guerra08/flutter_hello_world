import 'package:flutter/material.dart';
import 'package:flutter_hello_world/di/get_it_setup.dart';
import 'package:flutter_hello_world/presentation/pages/home_page.dart';

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
