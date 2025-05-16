import 'package:flutter/material.dart';

class Paginadiez extends StatefulWidget {
  const Paginadiez({Key? key}) : super(key: key);

  @override
  State<Paginadiez> createState() => _PaginadiezState();
}

class _PaginadiezState extends State<Paginadiez> {
  double _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla diez")), // Corregido a "diez"
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        // Añadido Center como padre
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 300 ? 100 : 300;
            });
          },
          child: Container(
            color: Colors.white,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}
