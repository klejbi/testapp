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
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              return AlertDialog(
                title: const Text("Wpisałeś:"),
                content: Text(myController.text), // Teraz zadziała!
              );
            },
          );
        },
        child: const Icon(Icons.ads_click),
      ),
    );
  }
}
 

