import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;

  Future _getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future _getImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: _image == null
                  ? Text(
                      "Select an image",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    )
                  : Image.file(_image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: _getImageFromCamera,
                    child: Icon(
                      Icons.camera,
                      size: 100,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: _getImageFromGallery,
                    child: Icon(
                      Icons.image,
                      size: 100,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
