import 'package:flutter/material.dart';

class PantallaBuscadorSuperherois extends StatelessWidget {
  const PantallaBuscadorSuperherois({super.key});

  @override
  Widget build(BuildContext context) {
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
                    onChanged: (text) {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
