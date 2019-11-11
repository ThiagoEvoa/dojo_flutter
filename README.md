# SnackBar
<p align="center">
<img src="https://docs.google.com/uc?id=1v1M2y4RS4NWnP9I1xblPl4gngxgJF-kx" height="649" width="300">
</p>

```dart
final _globalKey = GlobalKey<ScaffoldState>();

Scaffold(
  key: _globalKey,
  appBar: AppBar(),
  body: Center(
    child: Builder(
        builder: (context) => RaisedButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Snackbar"),
                  ),
                );
              },
              child: Text("Button"),
            )),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      _globalKey.currentState.showSnackBar(
        SnackBar(
          content: Text("Snackbar with global key"),
        ),
      );
    },
    child: Icon(Icons.add),
  ),
);
```
