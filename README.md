# AnimatedContainer
<p align="center">
<img src="https://docs.google.com/uc?id=1SBY0m49hVZEMcG1E7Ygn40FVOZ8ufUDn" height="649" width="300">
<img src="https://docs.google.com/uc?id=1nJPmHEj4Lz1pQuGuxREr8Xc9ihCy9tPq" height="649" width="300">
</p>

```dart
double _heightBlue = 0;
double _heightYellow = 0;
double _heightRed = 0;

Scaffold(
  appBar: AppBar(),
  body: Center(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          border: Border(
              left: BorderSide(width: 3, color: Colors.black),
              bottom: BorderSide(width: 3, color: Colors.black)),
        ),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                width: 60,
                height: _heightBlue,
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                width: 60,
                height: _heightYellow,
                color: Colors.yellow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                width: 60,
                height: _heightRed,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    ),
  ),
  floatingActionButton: FloatingActionButton.extended(
    onPressed: () {
      setState(() {
        _heightBlue += 100;
        _heightYellow += 150;
        _heightRed += 200;
      });
    },
    label: Text("Animate"),
  ),
);
```
