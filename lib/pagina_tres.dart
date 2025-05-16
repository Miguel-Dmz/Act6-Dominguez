import 'package:flutter/material.dart';

class Paginatres extends StatefulWidget {
  const Paginatres({Key? key}) : super(key: key);

  @override
  State<Paginatres> createState() => _PaginatresState();
}

class _PaginatresState extends State<Paginatres> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Pantalla tres")), // Cambiado a "Pantalla tres"
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (_isPlay) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
              _isPlay = !_isPlay;
            });
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause, // Corregido a AnimatedIcons
            progress: _controller,
            size: 100,
            color: Colors.blue, // Color añadido para mejor visibilidad
          ),
        ),
      ),
    );
  }
}
