# DatePicker / TimePicker
<p align="center">
<img src="https://docs.google.com/uc?id=1IeHK4ra44MJkIoolsBf5-VvaUIvhS13b" height="649" width="300">
  <img src="https://docs.google.com/uc?id=1pWk9fPdat9QlMrrMKlhyVLCc5ovOaa0b" height="649" width="300">
</p>

```dart
Future _selectDate() async {
  DateTime dateTime = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(DateTime.now().year),
    lastDate: DateTime(DateTime.now().year + 100),
    builder: (context, child) {
      return Theme(
        data: ThemeData.light(),
        child: child,
      );
    },
  );

  if (dateTime != null) {
    setState(
      () {
        _dateTimeController.text =
            formatDate(dateTime, [dd, "/", mm, "/", yyyy]);
      },
    );
  }
}


Future _selectTime() async {
  TimeOfDay timeOfDay = await showTimePicker(
    context: context,
    initialTime:
        TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute),
    builder: (context, child) {
      return Theme(
        data: ThemeData.light(),
        child: child,
      );
    },
  );

  if (timeOfDay != null) {
    setState(
      () {
        _timeOfDayController.text = timeOfDay.format(context);
      },
    );
  }
}

Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: _dateTimeController,
        onTap: () {
          _selectDate();
        },
        decoration: InputDecoration(
          labelText: "Select Date",
          suffixIcon: Icon(Icons.calendar_today),
          border: OutlineInputBorder(),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: _timeOfDayController,
        onTap: () {
          _selectTime();
        },
        decoration: InputDecoration(
          labelText: "Select Time",
          suffixIcon: Icon(Icons.timer),
          border: OutlineInputBorder(),
        ),
      ),
    ),
  ],
),
```
