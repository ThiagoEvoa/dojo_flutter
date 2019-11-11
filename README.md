# Navigation
<p align="center">
<img src="https://docs.google.com/uc?id=1fDWdaHU9UmvL05_2ZbaTygZSM-KGrYHz" height="649" width="300">
</p>

```dart
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

Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text(data),
    RaisedButton(
      onPressed: (){
        Navigator.pop(context);
      },
      child: Text("Close"),
    )
  ],
),
```
