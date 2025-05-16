import 'package:flutter/material.dart';

class Paginaseis extends StatefulWidget {
  const Paginaseis({Key? key}) : super(key: key);

  @override
  State<Paginaseis> createState() => _PaginaseisState();
}

class _PaginaseisState extends State<Paginaseis> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla seis")), // Corregido a "seis"
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orangeAccent, // Cambiado primary por backgroundColor
                foregroundColor: Colors.white, // Color del texto
              ),
              onPressed: () {
                setState(() {
                  padValue = padValue == 0.0 ? 100.0 : 0.0;
                });
              },
              child: const Text("Change padding"),
            ),
            const SizedBox(height: 20), // Espaciado añadido
            Text("Padding = $padValue"),
            const SizedBox(height: 20), // Espaciado añadido
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width:
                    MediaQuery.of(context).size.width * 0.8, // Ancho relativo
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
