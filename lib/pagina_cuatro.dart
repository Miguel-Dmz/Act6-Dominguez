import 'package:flutter/material.dart';

class Paginacuatro extends StatefulWidget {
  // Corregido StatefulWidget
  const Paginacuatro({Key? key}) : super(key: key); // Constructor corregido

  @override
  State<Paginacuatro> createState() => _PaginacuatroState();
}

class _PaginacuatroState extends State<Paginacuatro>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    final _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _colorAnimation = _colorTween.animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Pantalla cuatro")), // Corregido a "cuatro"
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
                width: 250.0,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        minimumSize: const Size(250, 50), // Tamaño consistente
                      ),
                      onPressed: () {
                        setState(() {
                          _isPressed = true;
                        });
                        _animationController.reset();
                        _animationController.forward().then((_) {
                          setState(() {
                            _isPressed = false;
                          });
                        });
                      },
                      child: const Text("Press"),
                    ),
                    if (_isPressed)
                      AnimatedModalBarrier(
                        color: _colorAnimation,
                        dismissible: false,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
