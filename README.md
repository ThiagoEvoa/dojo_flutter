# PopupMenuButton
<p align="center">
<img src="https://docs.google.com/uc?id=1QxME8qX8MtIB06-k2Yltkyxl2OyTOg-K" height="649" width="300">
</p>

```dart
Scaffold(
  appBar: AppBar(
    actions: <Widget>[
      PopupMenuButton(
        icon: Icon(Icons.menu),
        onSelected: (result) {},
        itemBuilder: (context) => <PopupMenuEntry<MenuItens>>[
          const PopupMenuItem<MenuItens>(
            value: MenuItens.option1,
            child: Text("First Option"),
          ),
          const PopupMenuItem<MenuItens>(
            value: MenuItens.option2,
            child: Text("Second Option"),
          ),
          const PopupMenuItem<MenuItens>(
            value: MenuItens.option3,
            child: Text("Third Option"),
          ),
        ],
      ),
    ],
  ),
);
```
