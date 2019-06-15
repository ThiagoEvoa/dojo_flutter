import 'package:flutter/material.dart';
import 'package:flutter_app/person.dart';
import 'package:flutter_app/personDAO.dart';

class DetailPage extends StatefulWidget {
  Person person;

  DetailPage({this.person});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController(text: widget.person?.name);

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
            ),
          ),
          RaisedButton(
            onPressed: () {
              if(widget.person == null){
                widget.person = Person(name: _controller.text);
              }else{
                widget.person.name = _controller.text;
              }
              PersonDAO().insert(person: widget.person);
              Navigator.pop(context); 
            },
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}
