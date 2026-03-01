import 'package:flutter/material.dart';

class LolPage extends StatefulWidget {
  const LolPage({super.key});

  @override
  State<LolPage> createState() => _LolPageState();
}

class _LolPageState extends State<LolPage> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text('hello')),
          SizedBox(
            height: 55.0,
            width: 290,
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'siema',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(content: Text(myController.text));
            },
          );
        },
        child: const Icon(Icons.battery_unknown),
      ),
    );
  }
}
