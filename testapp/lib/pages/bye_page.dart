import 'package:flutter/material.dart';

class ByePage extends StatefulWidget {
  const ByePage({super.key});

  @override
  State<ByePage> createState() => _ByePageState();
}

class _ByePageState extends State<ByePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text('type your product')),
          SizedBox(
            height: 60.0,
            width: 290,
            child: TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
