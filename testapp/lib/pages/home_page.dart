import 'package:flutter/material.dart';
import 'package:testapp/pages/lol_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            children: [
              Text('hi'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LolPage(),
                    ),
                  );
                },
                child: Text('lol'),
              ),
              TextButton(onPressed: () {}, child: Text('bye')),
              SizedBox(
                height: 45.0,
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'siema',
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
