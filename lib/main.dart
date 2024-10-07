import 'package:advanced_ui/datePicker/date_picker.dart';
import 'package:advanced_ui/ios%20datePicke/ios_datePicker.dart';
import 'package:advanced_ui/timePicker/time_picker.dart';
import 'package:flutter/material.dart';

import 'alertDilogurBox With datePicker/alertDilogue.dart';
import 'bottom sheet Timer/bottom_time.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const PickerDate(),
        '/ale' : (context) => const Alertdilogue(),
        '/time' : (context) => const TimePicker(),
        '/ios' : (context) => const IosDatepicker(),
        '/sheet' : (context) => const BottomTime(),
      },
    );
  }
}

