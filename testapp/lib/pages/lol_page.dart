import 'package:flutter/material.dart';

class LolPage extends StatefulWidget {
  const LolPage({super.key});

  @override
  State<LolPage> createState() => _LolPageState();
}

class _LolPageState extends State<LolPage> {
  final myController = TextEditingController();
  final List<String> listSiema = [];

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Moja Lista')),
      body: Column(
        children: [
          const Center(child: Text('hello')),
          const SizedBox(height: 10),
          SizedBox(
            height: 55.0,
            width: 290,
            child: TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'siema',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listSiema.length, // Tutaj też małe 'l'
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(listSiema[index]), // I tutaj
                  leading: const Icon(Icons.label),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (myController.text.isNotEmpty) {
            setState(() {
              // Teraz nazwa zgadza się z definicją na górze
              listSiema.add(myController.text);
              myController.clear();
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
