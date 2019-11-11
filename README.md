# Bottom Navigation
<p align="center">
<img src="https://docs.google.com/uc?id=16KSWLMChjHZCYS8t6VAwwkvA_gZM6VW8" height="649" width="300">
</p>

```dart
int _selectedItem = 0;
List<Widget> pages = [Page1(), Page2()];
Scaffold(
  appBar: AppBar(),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        pages[_selectedItem],
      ],
    ),
  ),
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.blue,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.blue[200],
    currentIndex: _selectedItem,
    onTap: (position) {
      setState(() {
        _selectedItem = position;
      });
    },
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.add),
        title: Text("Bottom1"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        title: Text("Bottom2"),
      ),
    ],
  ),
);
```
