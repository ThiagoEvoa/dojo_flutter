import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _dateTimeController = TextEditingController();
  final _timeOfDayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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

    return Material(
      child: Column(
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
    );
  }
}
