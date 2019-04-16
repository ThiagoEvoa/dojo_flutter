import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha AppBar"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Lista"),
              subtitle: Text("Exemplo de lista simples"),
              trailing: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
