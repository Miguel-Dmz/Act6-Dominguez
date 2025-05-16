import 'package:flutter/material.dart';

class Paginasiete extends StatefulWidget {
  const Paginasiete({Key? key}) : super(key: key); // Corregido nombre de clase

  @override
  _PaginasieteState createState() =>
      _PaginasieteState(); // Nombre de clase corregido
}

class _PaginasieteState extends State<Paginasiete> {
  // Nombre de clase corregido
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Center(child: Text("Pantalla siete")), // Corregido a "siete"
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        // Movido dentro del body del Scaffold
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              color: Colors.white,
              shadowColor: Colors.black,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(
                  Icons.android_outlined,
                  size: 60, // Tamaño aumentado del ícono
                  color: Colors.green, // Color verde para el Android
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xff75a8fe), // Color coordinado con AppBar
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text(
                'Toggle Elevation',
                style: TextStyle(fontSize: 16), // Texto más descriptivo
              ),
            ),
          ],
        ),
      ),
    );
  }
}
