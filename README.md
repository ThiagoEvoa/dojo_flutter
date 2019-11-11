# Dialog
<p align="center">
<img src="https://docs.google.com/uc?id=10woS_VDbK3ctLLTFUx2pOS44W1p7X6NF" height="649" width="300">
<img src="https://docs.google.com/uc?id=15dEIaR-LIClsCPFj3YDCdhUimk7i6Dou" height="649" width="300">
</p>

```dart
Future<void> _dialog() async {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text("Dialog"),
        content: Text("Simple dialog example"),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("ok"),
          )
        ],
      );
    },
  );
}

Future<void> _generalDialog() async {
  return showGeneralDialog(
    context: context,
    barrierDismissible: false,
    transitionDuration: Duration(seconds: 3),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      var fadeTween = CurveTween(curve: Curves.fastOutSlowIn);
      var fadeAnimation = fadeTween.animate(animation);
      return FadeTransition(
        opacity: fadeAnimation,
        child: child,
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return AlertDialog(
        title: Text("Dialog"),
        content: Text("GeneralDialog example"),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("ok"),
          ),
        ],
      );
    },
  );
}

Material(
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: RaisedButton(
            onPressed: _dialog,
            child: Text("Dialog"),
          ),
        ),
        RaisedButton(
          onPressed: _generalDialog,
          child: Text("General Dialog"),
        ),
      ],
    ),
  ),
);
```
