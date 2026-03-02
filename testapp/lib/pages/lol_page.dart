import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; 
import 'package:testapp/providers/list_provider.dart';

class LolPage extends StatefulWidget {
  const LolPage({super.key});

  @override
  State<LolPage> createState() => _LolPageState();
}

class _LolPageState extends State<LolPage> {
  // Kontroler do obsługi tekstu z pola TextField
  final myController = TextEditingController();

  @override
  void dispose() {
    // Ważne: zwalniamy zasoby kontrolera, gdy strona jest niszczona
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Słuchamy zmian w Providerze (dzięki temu UI się odświeży)
    final provider = context.watch<ListProvider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Lol List'),
      ),
      body: Column(
        children: [
          const Center(child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Zarządzaj swoją listą:'),
          )),
          
          // Pole tekstowe do wpisywania nowych elementów
          SizedBox(
            height: 55.0,
            width: 290,
            child: TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Wpisz coś...',
              ),
            ),
          ),

          // Przycisk dodawania
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: ElevatedButton(
              onPressed: () {
                if (myController.text.isNotEmpty) {
                  // Sprawdzamy limit (15 elementów)
                  if (provider.listSiema.length < 15) {
                    // Dodajemy element przez Providera
                    context.read<ListProvider>().addElement(myController.text);
                    myController.clear(); // Czyścimy pole po dodaniu
                  } else {
                    // Wyświetlamy SnackBar z błędem limitu
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Osiągnięto limit 15 elementów!'),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                }
              },
              child: const Text('Dodaj do listy'),
            ),
          ),

          // Lista elementów
          Expanded(
            child: ListView.builder(
              itemCount: provider.listSiema.length,
              itemBuilder: (context, index) {
                final item = provider.listSiema[index];

                return Dismissible(
                  // UniqueKey jest bezpieczny, gdy mamy duplikaty tekstów
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    // Usuwamy element przez Providera
                    context.read<ListProvider>().removeElement(index);
                  },
                  child: ListTile(
                    leading: const Icon(Icons.label),
                    // DODANE: title wyświetla tekst elementu na liście
                    title: Text(item),
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