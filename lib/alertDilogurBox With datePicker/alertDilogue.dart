import 'package:flutter/material.dart';

class Alertdilogue extends StatefulWidget {
  const Alertdilogue({super.key});

  @override
  State<Alertdilogue> createState() => _AlertdilogueState();
}

class _AlertdilogueState extends State<Alertdilogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Phone ringtone'),
              actions: [
                const Divider(),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RadioListTile(
                        value: 'None',
                        groupValue: 'None',
                        onChanged: (value) {},
                        title: const Text('None'),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: 'Candy',
                        onChanged: (value) {},
                        title: const Text('Candy'),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: 'Crystal',
                        onChanged: (value) {},
                        title: const Text('Crystal'),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: 'Buzz',
                        onChanged: (value) {},
                        title: const Text('Buzz'),
                      ),
                    ],
                  ),
                ),
                const Divider(),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   TextButton(
                     onPressed: () {},
                     child: const Text('OK'),
                   ),
                   TextButton(
                     onPressed: () => Navigator.pop(context),
                     child: const Text('Cancel'),
                   ),
                 ],
               )
              ],
            ),
          );
        }, child: Text('Show Dialoge')),
      ),
    );
  }
}
