# Reorderable Listview
<p align="center">
<img src="https://docs.google.com/uc?id=1C92zKB9nMOpxPTbhQfPJPv71ni_wsVAh" height="649" width="300">
</p>

```
final items = List<String>.generate(20, (items) => "My Reorderable ListView  $items");

ReorderableListView(
  onReorder: (int oldIndex, int newIndex) {
    setState(
      () {
        if (newIndex > oldIndex) {
          newIndex -= 1;
        }
        var item = items.removeAt(oldIndex);
        items.insert(newIndex, item);
      },
    );
  },
  header: Text(
    'Header',
    style: TextStyle(color: Colors.blue, fontSize: 30),
  ),
  children: <Widget>[
    for (final item in items)
      ListTile(
        key: ValueKey(item),
        title: Text(item),
      ),
  ],
),
```
