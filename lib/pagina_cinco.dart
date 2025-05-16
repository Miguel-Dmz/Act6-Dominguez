import 'package:flutter/material.dart';

class Paginacinco extends StatefulWidget {
  const Paginacinco({Key? key}) : super(key: key);

  @override
  State<Paginacinco> createState() => _PaginacincoState();
}

class _PaginacincoState extends State<Paginacinco> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla cuatro")),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            const SizedBox(height: 20), // Espaciado añadido
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff75a8fe), // Color coordinado
              ),
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                });
              },
              child: const Text('Fade Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
