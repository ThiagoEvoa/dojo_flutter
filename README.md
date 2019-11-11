# TabBar
<p align="center">
<img src="https://docs.google.com/uc?id=16GawcxEE7Z6ggcZIPVUpzWSQwtPMB58E" height="649" width="300">
</p>

```dart
DefaultTabController(
  length: 2,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(
            text: "Tab1",
          ),
          Tab(
            text: "Tab2",
          ),
        ],
      ),
    ),
    body: Center(
      child: TabBarView(
        // physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Page1(),
          Page2(),
        ],
      ),
    ),
  ),
);
```
