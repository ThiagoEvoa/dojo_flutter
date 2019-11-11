# AppBar
<p align="center">
<img src="https://docs.google.com/uc?id=1IC1puPVosdwa6esZDu7GmdjWSM5rnXyu" height="649" width="300">
</p>

```dart
Scaffold(
  appBar: AppBar(
    title: Text("Appbar"),
    centerTitle: true,
    backgroundColor: Colors.blue,
    leading: FlutterLogo( ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      )
    ],
  ),
);
```
