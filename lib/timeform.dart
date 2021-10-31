import 'package:flutter/material.dart';

class TimeForm extends StatefulWidget {
  TimeForm({Key? key}) : super(key: key);

  @override
  _TimeFormState createState() => _TimeFormState();
}

class _TimeFormState extends State<TimeForm> {
  String time = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.redAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent,
            ),
            onPressed: () {
              showTimePicker(context: context, initialTime: TimeOfDay.now())
                  .then((value) {
                setState(() {
                  time = value.toString();
                });
              });
            },
            child: Text('Time Picker'),
          ),
          Text(
            'Waktu :' + time,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
