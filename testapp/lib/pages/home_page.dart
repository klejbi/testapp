import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text('hi'),
              ElevatedButton(onPressed: () {}, child: Text('lol')),
              TextButton(onPressed: () {}, child: Text('bye')),
              SizedBox(
                height: 30.0,
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'siema'
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
