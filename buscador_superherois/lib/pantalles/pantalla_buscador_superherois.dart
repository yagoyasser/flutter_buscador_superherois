import 'package:buscador_superherois/dades/models/resposta_superheroi.dart';
import 'package:buscador_superherois/dades/repositori.dart';
import 'package:flutter/material.dart';

class PantallaBuscadorSuperherois extends StatefulWidget {
  const PantallaBuscadorSuperherois({super.key});

  @override
  State<PantallaBuscadorSuperherois> createState() => _PantallaBuscadorSuperheroisState();
}

class _PantallaBuscadorSuperheroisState extends State<PantallaBuscadorSuperherois> {
  @override
  Widget build(BuildContext context) {
    Future<RespostaSuperheroi?>? _informacioSuperheroi;
    Repositori repositori = Repositori();

    return Scaffold(
      appBar: AppBar(title: Text("Buscador superherois"), centerTitle: true),
      body: Center(
        child: SafeArea(
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Cerca un superheroi",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (text) {
                      setState(() {
                        _informacioSuperheroi = repositori.portarInformacioSuperheroi(text);
                      });
                    },
                  ),
                  FutureBuilder(
                    future: _informacioSuperheroi,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text("Error: ${snapshot.error}");
                      } else if (snapshot.hasData) {
                        return Text("${snapshot.data?.resposta}");
                      } else {
                        return Text("No hi ha resultats");
                      }
                    })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
