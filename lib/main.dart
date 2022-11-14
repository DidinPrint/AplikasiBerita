import 'package:flutter/material.dart';
import 'package:newsapps/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Aplikasi',
      theme: ThemeData(appBarTheme: const AppBarTheme(elevation: 0)),
      home: const Home(),
    );
  }
}
