# Switch
<p align="center">
<img src="https://docs.google.com/uc?id=1fSwYbU7iy0mNeCNH5dViPgSaPAirGjPj" height="649" width="300">
</p>

```dart
bool value = false;

Switch(
  value: value,
  activeColor: Colors.blue,
  activeTrackColor: Colors.blue[100],
  onChanged: (value) {
    setState(() {
      this.value = value;
    });
  },
),
```
