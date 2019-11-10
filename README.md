# ToggleButtons
<p align="center">
<img src="https://docs.google.com/uc?id=151jW_Ithw_xN_OWfNEoOe7rrcQXzZkD8" height="649" width="300">
</p>

```
ToggleButtons(
  onPressed: (index) {
    setState(() {
      _isMultiSelected[index] = !_isMultiSelected[index];
    });
  },
  isSelected: _isMultiSelected,
  children: <Widget>[
    Icon(Icons.camera),
    Icon(Icons.image),
  ],
),

ToggleButtons(
  onPressed: (index) {
    setState(() {
      for (var i = 0; i < _isSelected.length; i++) {
        if (i == index) {
          _isSelected[i] = true;
        } else {
          _isSelected[i] = false;
        }
      }
    });
  },
  isSelected: _isSelected,
  children: <Widget>[
    Icon(Icons.camera),
    Icon(Icons.image),
  ],
),

ToggleButtons(
  onPressed: (index) {
    int count = 0;
    _isMultiRequiredSelected.forEach((bool val) {
      if (val) count++;
    });

    if (_isMultiRequiredSelected[index] && count < 2) return;

    setState(() {
      _isMultiRequiredSelected[index] =
          !_isMultiRequiredSelected[index];
    });
  },
  isSelected: _isMultiRequiredSelected,
  children: <Widget>[
    Icon(Icons.camera),
    Icon(Icons.image),
  ],
),
```
