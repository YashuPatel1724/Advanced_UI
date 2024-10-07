import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTime extends StatefulWidget {
  const BottomTime({super.key});

  @override
  State<BottomTime> createState() => _BottomTimeState();
}

class _BottomTimeState extends State<BottomTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => CupertinoTimerPicker(
            //     onTimerDurationChanged: (value) {},
            //   ),
            // );
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return Container(
                  color: CupertinoColors.systemBackground.resolveFrom(context),
                  height: 300,
                  child: CupertinoTimerPicker(
                    onTimerDurationChanged: (value) {

                    },
                  ),
                );

              },
            );
          },
          child: const Text('Sheet'),
        ),
      ),
    );
  }
}
