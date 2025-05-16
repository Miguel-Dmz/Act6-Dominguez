import 'package:Dominguez1173/pagina_cinco.dart';
import 'package:Dominguez1173/pagina_cuatro.dart';
import 'package:Dominguez1173/pagina_dos.dart';
import 'package:Dominguez1173/pagina_nueve.dart';
import 'package:Dominguez1173/pagina_ocho.dart';
import 'package:Dominguez1173/pagina_once.dart';
import 'package:Dominguez1173/pagina_seis.dart';
import 'package:Dominguez1173/pagina_siete.dart';
import 'package:Dominguez1173/pagina_tres.dart';
import 'package:Dominguez1173/pagina_uno.dart';
import 'package:Dominguez1173/pantalla_diez.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cisneros",
      initialRoute: "/",
      routes: {
        "/": (context) => const Paginauno(),
        '/pantalla dos': (context) => const PaginaDos(),
        '/Pantalla tres': (context) => const Paginatres(),
        '/pantalla cuatro': (context) => const Paginacuatro(),
        '/pantalla cinco': (context) => const Paginacinco(),
        '/pantalla seis': (context) => const Paginaseis(),
        '/pantalla siete': (context) => const Paginasiete(),
        '/pantalla ocho': (context) => const Paginaocho(),
        '/pantalla nueve': (context) => const Pantallanueve(),
        '/pantalla diez': (context) => const Paginadiez(),
        '/pantalla once': (context) => const Paginaonce(),
      },
    );
  }
}
