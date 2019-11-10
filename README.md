# Selectable Text
<p align="center">
<img src="https://docs.google.com/uc?id=15_urYiOwgfIbXwT1aq9zRRW50DfgWaNd" height="649" width="300">
</p>

```
SelectableText(
  text,
  onTap: () {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text("Text copied."),
      ),
    );
    Clipboard.setData(
      ClipboardData(text: text),
    );
  },
),
```
