# Form
<p align="center">
<img src="https://docs.google.com/uc?id=1JeC0Rr0_yvEUGHh6ilp9_evcM9tF1iTF" height="649" width="300">
</p>

```
final _formKey = GlobalKey<FormState>();

Form(
  key: _formKey,
  child: Padding(
    padding: const EdgeInsets.all(20),
    child: TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Required field';
        }
        return null;
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Type something"),
    ),
  ),
),
```
