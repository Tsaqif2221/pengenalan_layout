import 'package:flutter/material.dart';
import '/home.dart';

void main() {
  runApp(const Tsaqif());
}

class Tsaqif extends StatelessWidget {
  const Tsaqif({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'tsaqif', home: MyApp());
  }
}
