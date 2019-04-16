class UF {
  final String sigla;
  final String nome;

  UF({this.sigla, this.nome});

  factory UF.fromJson(Map<String, dynamic> json) {
    return UF(sigla: json["sigla"], nome: json["nome"]);
  }
}
