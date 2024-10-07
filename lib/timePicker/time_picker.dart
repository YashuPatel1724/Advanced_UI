import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: SizedBox(
            width: 250,
            child: TextField(
              controller: timePicker,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  label: const Text('Pick Time'),
                  suffixIcon: GestureDetector(
                      onTap: () async {
                        pickerTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        setState(() {
                         if(pickerTime!=null)
                           {
                             time = '${pickerTime!.hour} :  ${pickerTime!.minute}';
                             timePicker.text = time;
                           }
                        });
                      },
                      child: const Icon(CupertinoIcons.time))),
            ),
          )),
    );
  }
}

TimeOfDay? pickerTime;
String time = "";
var timePicker = TextEditingController();
