class RespostaSuperheroi {
  final String resposta;

  RespostaSuperheroi({
    required this.resposta
  });

  factory RespostaSuperheroi.fromJson(Map<String, dynamic> json) {
    return RespostaSuperheroi(resposta: json["response"]);
  }
}