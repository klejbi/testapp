import 'package:flutter/material.dart';

class Hipage extends StatefulWidget {
  const Hipage({super.key});

  @override
  State<Hipage> createState() => _HipageState();
}

class _HipageState extends State<Hipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('gridview'),
            SizedBox(height: 25),
            Expanded(
              child: GridView.builder(
                itemCount: 50,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('cliked ${index + 1}'),
                          duration: const Duration(seconds: 1),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: Card(
                      color: index % 2 == 0
                          ? Colors.amber[100 * (index % 9 + 1)]
                          : Colors.blue[100 * (index % 9 + 1)],
                      child: Center(child: Text('Hello ${index + 1} ')),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
