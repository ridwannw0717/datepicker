import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';


class TimePicker extends StatefulWidget {
  TimePicker({Key? key}) : super(key: key);

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  String date = "";
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  _selectedTime(context);
                },
              child: Text("Choose Time"),
            ),
          ],
        ),
      ),
    );
  }


_selectedTime(BuildContext context) async {
    final TimeOfDay? picked_time = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        );

    if (picked_time != null && picked_time != selectedTime)
      setState(() {
        selectedTime = picked_time;
      });
  }
}