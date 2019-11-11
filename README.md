# Slider
<p align="center">
<img src="https://docs.google.com/uc?id=1pyDRXSarTQyt6R--6Jw3NTXAHkys4Tii" height="649" width="300">
</p>

```dart
double value = 0;

Slider(
  value: value,
  activeColor: Colors.blue,
  inactiveColor: Colors.blue[100],
  onChanged: (value) {
    setState(() {
      this.value = value;
    });
  },
),
```
