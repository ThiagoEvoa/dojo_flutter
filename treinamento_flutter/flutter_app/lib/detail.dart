import 'package:flutter/material.dart';
import 'package:flutter_app/item.dart';

class DetailPage extends StatefulWidget {
  final Item item;

  const DetailPage({this.item});

  @override
  _DetailPageState createState() => _DetailPageState(item);
}

class _DetailPageState extends State<DetailPage> {
  final Item item;

  _DetailPageState(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text("Data de Referência")),
                Text(item.dataReferencia)
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Estado")),
                Text(item.municipio.uf.nome)
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Cidade")),
                Text(item.municipio.nomeIBGE)
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Valor gasto")),
                Text("R\$ ${item.valor}")
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Quantidade de beneficiados")),
                Text(item.quantidadeBeneficiados.toString())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
