import 'package:flutter_app/uf.dart';

class Municipio {
  final String codigoIBGE;
  final String nomeIBGE;
  final String pais;
  final UF uf;

  Municipio({this.codigoIBGE, this.nomeIBGE, this.pais, this.uf});

  factory Municipio.fromJson(Map<String, dynamic> json) {
    return Municipio(
        codigoIBGE: json["codigoIBGE"],
        nomeIBGE: json["nomeIBGE"],
        pais: json["pais"],
        uf: UF.fromJson(json["uf"]));
  }
}
