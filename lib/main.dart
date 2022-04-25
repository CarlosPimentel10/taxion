import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const Taxion());
}

class Taxion extends StatelessWidget {
  const Taxion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxion',
      home: const Home(title: 'Taxion'),
    );
  }
}

