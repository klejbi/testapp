import 'dart:math';

import 'package:flutter/material.dart';

class LolPage extends StatefulWidget {
  const LolPage({super.key});

  @override
  State<LolPage> createState() => _LolPageState();
}

class _LolPageState extends State<LolPage> {
  final myController = TextEditingController();
  final List<String> listSiema = ['lol', 'lolo', 'lole'];
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: ElevatedButton(
              onPressed: () {
                if (myController.text.isNotEmpty) {
                  setState(() {
                    listSiema.add(myController.text);
                    myController.clear();
                  });
                }
              },
              child: Text('add'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: min(listSiema.length, 15),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(listSiema[index]),
                  leading: const Icon(Icons.label),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
