import 'package:flutter/material.dart';

class LolPage extends StatefulWidget {
  const LolPage({super.key});

  @override
  State<LolPage> createState() => LolPageState();
}

class LolPageState extends State<LolPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('hello'))
    );
  }
}
 

