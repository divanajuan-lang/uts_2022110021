import 'package:flutter/material.dart';
import 'package:uts_2022110021/home_screen.dart';
import 'package:uts_2022110021/login_screen.dart';
import 'package:uts_2022110021/product_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/product': (context) => ProductScreen(),
      },
    );
  }
}
