import 'package:buscador_superherois/dades/models/resposta_superheroi.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Repositori {

  Future<RespostaSuperheroi?> portarInformacioSuperheroi(String nom) async {
    // Per poder fer peticions http, cal importar abans la llibreria a l'arxiu de configuració pubspec.yaml
    final resposta = await http.get(Uri.parse(
      "https://superheroapi.com/api/bbe5fb14efbdfcf3a61b0e77e295cc7c/search/$nom"
    ));

    // 200 - OK
    if (resposta.statusCode == 200) { 
      var jsonDecodificat = jsonDecode(resposta.body);
      RespostaSuperheroi respostaSuperheroi = RespostaSuperheroi.fromJson(jsonDecodificat);
      return respostaSuperheroi;
    } else {
      return null;
    }
  }
}