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
      body: Center(child: Text('byeeee bitch ')));
  }
}
