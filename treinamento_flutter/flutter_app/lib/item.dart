import 'dart:convert';

import 'package:flutter_app/municipio.dart';
import 'package:http/http.dart' as http;

class Item {
  final int id;
  final String dataReferencia;
  final Municipio municipio;
  final double valor;
  final int quantidadeBeneficiados;

  Item(
      {this.id,
      this.dataReferencia,
      this.municipio,
      this.valor,
      this.quantidadeBeneficiados});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        id: json["id"],
        dataReferencia: json["dataReferencia"],
        municipio: Municipio.fromJson(json["municipio"]),
        valor: json["valor"],
        quantidadeBeneficiados: json["quantidadeBeneficiados"]);
  }

  static Future<List<dynamic>> retrieveData() async {
    final response = await http.get(
        "http://www.transparencia.gov.br/api-de-dados/bolsa-familia-por-municipio?mesAno=201812&codigoIbge=2611606&pagina=1");

    print(response);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Erro ao tentar recuperar dados.");
    }
  }
}
