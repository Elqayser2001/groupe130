import 'package:flutter/material.dart';

main() {
  runApp(sizecounter());
}

class sizecounter extends StatefulWidget {
  @override
  State<sizecounter> createState() => _sizecounterState();
}

class _sizecounterState extends State<sizecounter> {
  double counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(counter)),
                  ),
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            Slider(
              min: 0,
              max: 100,
              value: counter,
              onChanged: (double z) {
                counter = z;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
