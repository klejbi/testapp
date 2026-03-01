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
          Expanded(child: ListView.builder(
            itemCount: listSiema.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(listSiema[index]),
                leading: const Icon(Icons.label),
              );
            })),
          Padding(
            padding: const EdgeInsets.only(bottom: 600.0),
            child: ElevatedButton(onPressed: () {
              if (myController.text.isNotEmpty){
                setState(() {
                  listSiema.add(myController.text);
                  myController.clear();
                });
              }
            }, child: Text('add')),
          ),
        ],
      ),
    );
  }
}
