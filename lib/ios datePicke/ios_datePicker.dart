import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosDatepicker extends StatefulWidget {
  const IosDatepicker({super.key});

  @override
  State<IosDatepicker> createState() => _IosDatepickerState();
}

class _IosDatepickerState extends State<IosDatepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 250,
          width: 300,
          child: CupertinoDatePicker(
            onDateTimeChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
