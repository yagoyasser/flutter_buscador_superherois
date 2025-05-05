import 'package:buscador_superherois/pantalles/pantalla_buscador_superherois.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaBuscadorSuperherois(),
    );
  }
}
