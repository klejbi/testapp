import 'package:flutter/material.dart';
import 'package:testapp/pages/hi_page.dart';
import 'package:testapp/pages/lol_page.dart';
import 'package:testapp/pages/bye_page.dart';
import 'package:testapp/widgets/ele_button_style.dart';
import 'package:testapp/widgets/text_button_style.dart';

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
              TextButtonStyle(
                label: 'hi',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hipage()),
                  );
                },
              ),
              EleButtonStyle(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LolPage()),
                  );
                },
                label: 'lol',
              ),
              TextButtonStyle(
                label: 'bye',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ByePage()),
                  );
                },
              ),
              SizedBox(
                height: 60.0,
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
