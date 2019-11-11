# Draggable
<p align="center">
<img src="https://docs.google.com/uc?id=1J4jqFdOyLvS2F2Q7OT_E1B3jgWnxKrJb" height="649" width="300">
<img src="https://docs.google.com/uc?id=1Yh0m1asUgoTi6QpzEzyi9kireIX9QmvS" height="649" width="300">
</p>

```dart
bool accept = false;

Scaffold(
  appBar: AppBar(),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Draggable(
                  feedback: FlutterLogo(
                    size: 80,
                  ),
                  childWhenDragging: Container(),
                  child: FlutterLogo(
                    size: 80,
                  ),
                  data: "flutter",
                ),
              ),
              Expanded(
                flex: 1,
                child: Draggable(
                  feedback: Icon(
                    Icons.android,
                    size: 80,
                  ),
                  childWhenDragging: Container(),
                  child: Icon(
                    Icons.android,
                    size: 80,
                  ),
                  data: "android",
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
          ),
          child: DragTarget(
            builder: (context, List<String> candidateData, rejectedData) {
              return accept ? FlutterLogo(size: 80) : Container();
            },
            onWillAccept: (data) {
              if (data == "flutter") return true;
              return false;
            },
            onAccept: (data) {
              accept = true;
            },
          ),
        ),
      ],
    ),
  ),
);
```
