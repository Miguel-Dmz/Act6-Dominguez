import 'package:flutter/material.dart';

class Pantallanueve extends StatefulWidget {
  const Pantallanueve({Key? key}) : super(key: key);

  @override
  State<Pantallanueve> createState() => _PantallanueveState();
}

class _PantallanueveState extends State<Pantallanueve> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla nueve")),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orangeAccent, // Actualizado a backgroundColor
                foregroundColor: Colors.white, // Color del texto
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                setState(() {
                  turns += 1 / 4; // Rota 90 grados (1/4 de vuelta) cada clic
                });
              },
              child: const Text('Rotate Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
