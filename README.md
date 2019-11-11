# Navigation
<p align="center">
<img src="https://docs.google.com/uc?id=1JdP6n7zycqs-5nZBIt-Tt9Q_aqU8OXE-" height="649" width="300">
<img src="https://docs.google.com/uc?id=1cJADNotGzJKQeomDzq9tb2iMVMjcpTrY" height="649" width="300">
</p>

```dart
//FirstPage

_push(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

 _pushReplacement(BuildContext context, Widget widget) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

Scaffold(
  appBar: AppBar(
    title: Text(widget.title),
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(hintText: "Push with data"),
            onSubmitted: (text) {
              _push(
                context,
                SecondPage(
                  data: text,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: RaisedButton(
            onPressed: () {
              _push(context, SecondPage());
            },
            child: Text("Push"),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: RaisedButton(
            onPressed: () {
              _pushReplacement(context, SecondPage());
            },
            child: Text("Push Replacement"),
          ),
        ),
      ],
    ),
  ),
);

//SecondPage
class SecondPage extends StatefulWidget {
  final String data;

  const SecondPage({this.data = ""});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.data),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Fechar"),
            )
          ],
        ),
      ),
    );
  }
}
```
