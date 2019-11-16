import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/firebase_store_helper.dart';

class SecondPage extends StatefulWidget {
  final DocumentSnapshot document;

  const SecondPage({this.document});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController(
        text: widget.document == null ? '' : widget.document.data['email']);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            RaisedButton(
              onPressed: () {
                if (widget.document == null)
                  FirebaseStoreHelper().save(_controller.text);
                FirebaseStoreHelper()
                    .update(widget.document.documentID, _controller.text);

                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
