# ListView Builder
<p align="center">
<img src="https://docs.google.com/uc?id=1ExSvugltZb8G5znzNxFuO2-nTooWab1F" height="649" width="300">
</p>

```
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(items[index]),
    );
  },
),
```
