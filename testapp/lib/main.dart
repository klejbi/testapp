import 'package:flutter/material.dart';
import 'package:testapp/pages/home_page.dart';
import 'package:testapp/providers/list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ListProvider(),
      child: const MyApp(), 
    ),
  );
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
