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
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('too much element')),
                  );
                }
              },
              child: Text('add'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listSiema.length,
              itemBuilder: (context, index) {
                final item = listSiema[index];

                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      listSiema.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Usunięto: $item'),
                        action: SnackBarAction(
                          label: 'Cofnij',
                          onPressed: () {
                            // Tutaj można dodać logikę przywracania elementu
                          },
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(listSiema[index]),
                    leading: const Icon(Icons.label),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
