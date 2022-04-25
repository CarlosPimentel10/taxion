import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taxion/screens/login_page.dart';
import 'screens/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const Taxion());
}

class Taxion extends StatelessWidget {
  const Taxion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taxion',
      home: LoginPage(),
    );
  }
}
