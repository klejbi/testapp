import 'package:flutter/material.dart';
import 'package:testapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Namer App A',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomePage(),
    );
  }
}
