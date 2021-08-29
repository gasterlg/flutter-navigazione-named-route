import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Demo Route Denominate',
      // Start the app with the "/" named route. In this case, the app starts Avvia l'app con la route denominata "/". In questo caso l'app si avvia con il widget PrimaSchermata
      initialRoute: '/',
      routes: {
        // Quando si naviga verso la route "/", costruisci il widget PrimaSchermata
        '/': (context) => const PrimaSchermata(),
        // Quando si naviga verso la route "/seconda", costruisci il widget SecondaSchermata
        '/seconda': (context) => const SecondaSchermata(),
      },
    ),
  );
}

class PrimaSchermata extends StatelessWidget {
  const PrimaSchermata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prima Schermata'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Naviga verso la seconda schermata utilizzando una route denominata
            Navigator.pushNamed(context, '/seconda');
          },
          child: const Text('Lancia schermata'),
        ),
      ),
    );
  }
}

class SecondaSchermata extends StatelessWidget {
  const SecondaSchermata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seconda Schermata'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Naviga indietro verso la prima schermata eliminando la route attuale dallo stack
            Navigator.pop(context);
          },
          child: const Text('Torna indietro'),
        ),
      ),
    );
  }
}
