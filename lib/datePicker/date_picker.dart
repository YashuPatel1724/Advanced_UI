import 'package:flutter/material.dart';

class PickerDate extends StatefulWidget {
  const PickerDate({super.key});

  @override
  State<PickerDate> createState() => _PickerDateState();
}

class _PickerDateState extends State<PickerDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
            width: 250,
            child: TextField(
              controller: txtBirth,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              label: const Text('Date of Birth'),
              suffixIcon: GestureDetector(
                  onTap: () async {
                    datePicker =  await showDatePicker(
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.light(
                              primary: Colors.teal,
                              onPrimary: Colors.white,
                              onSurface: Colors.black,
                            ),
                            dialogBackgroundColor: Colors.yellow[100], // Background color of the dialog box
                          ),
                          child: child!,
                        );
                      },
                        context: context,
                        firstDate: DateTime(1950),
                        lastDate: DateTime.now());
                   setState(() {
                     if(datePicker != null)
                     {
                       date ='${datePicker!.day}/${datePicker!.month}/${datePicker!.year}';
                       txtBirth.text = date;
                     }
                   });
                  },
                  child: const Icon(Icons.date_range))),
                  ),
          )),
    );
  }
}

DateTime? datePicker;
var txtBirth = TextEditingController();
String date = "";
