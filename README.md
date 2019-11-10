# RichText
<p align="center">
<img src="https://docs.google.com/uc?id=1FxkShKk0vXA_LVkPIv7Zjum1Hb4tOMEy" height="649" width="300">
</p>

```
RichText(
  text: TextSpan(
    text: 'Rich ',
    style: TextStyle(color: Theme.of(context).primaryColor),
    children: <TextSpan>[
      TextSpan(
        text: 'Te',
        style: TextStyle(
            fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: 'tx',
        style: TextStyle(
            color: Theme.of(context).primaryColorDark, fontSize: 30),
      ),
    ],
  ),
),
```
