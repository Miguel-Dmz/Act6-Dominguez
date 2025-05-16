import 'package:flutter/material.dart';

class Paginaonce extends StatefulWidget {
  const Paginaonce({Key? key}) : super(key: key);

  @override
  State<Paginaonce> createState() => _PaginaonceState();
}

class _PaginaonceState extends State<Paginaonce> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla once")), // Corregido a "once"
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                key: ValueKey(_count),
                style: const TextStyle(fontSize: 40),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            const SizedBox(height: 20), // Espaciado añadido
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff75a8fe), // Color coordinado
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text(
                'Incrementar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
