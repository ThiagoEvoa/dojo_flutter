# Hero
<p align="center">
<img src="https://docs.google.com/uc?id=1g1rIXfmEV_DzjGR1FnxVG_uXQdxeSpUH" height="649" width="300">
  <img src="https://docs.google.com/uc?id=1yq7hZ5TaNhZyPW8E6yWvPmWHPSiPpEMj" height="649" width="300">
</p>

```dart
//FirstPage

Material(
  child: Container(
    alignment: Alignment.topLeft,
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondAnimation) {
              return Second();
            },
            transitionDuration: Duration(seconds: 1),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Hero(
          tag: 'img',
          child: FlutterLogo(
            size: 50,
          ),
        ),
      ),
    ),
  ),
);

//SecondPage

Scaffold(
  appBar: AppBar(),
  body: Container(
    width: 400,
    height: 400,
    child: Hero(
      tag: 'img',
      child: FlutterLogo(),
    ),
  ),
);
```
