import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateForm extends StatefulWidget {
  DateForm({Key? key}) : super(key: key);

  @override
  _DateFormState createState() => _DateFormState();
}

class _DateFormState extends State<DateForm> {
  String date = "";
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
              showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1999),
                      lastDate: DateTime(2040))
                  .then((value) {
                setState(() {
                  DateFormat formatter = DateFormat('dd-MM-yyyy');
                  String formatted = formatter.format(value!);
                  date = formatted;
                });
              });
            },
            child: Text('Date Picker'),
          ),
          Text(
            'Tanggal :' + date,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
