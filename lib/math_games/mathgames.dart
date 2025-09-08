import 'package:flutter/material.dart';

class Mathgames extends StatefulWidget {
  Mathgames({super.key});

  @override
  State<Mathgames> createState() => _MathgamesState();
}

class _MathgamesState extends State<Mathgames> {
  @override
  Widget build(BuildContext context) {
    return homescreenmathgames();
  }
}

class homescreenmathgames extends StatefulWidget {
  @override
  State<homescreenmathgames> createState() => _homescreenmathgamesState();
}

class _homescreenmathgamesState extends State<homescreenmathgames> {
  TextEditingController num3Controller = TextEditingController();
  TextEditingController num4Controller = TextEditingController();
  double result = 0;
  String operation = "";
  double num1 = 0;
  double num2 = 0;

  math(String operation) {
    double num1 = double.tryParse(num3Controller.text) ?? 0;
    double num2 = double.tryParse(num4Controller.text) ?? 0;

    if (operation == '+') {
      result = num1 + num2;
    } else if (operation == '-') {
      result = num1 - num2;
    } else if (operation == '*') {
      result = num1 * num2;
    } else if (operation == '/') {
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        result = double.infinity;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  TextFormField(
                    controller: num3Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'num1',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    controller: num4Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'num2',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(decoration: BoxDecoration(color: Colors.black87)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 60, height: 30, color: Colors.black87),
                Container(
                  width: 300,
                  height: 100,
                  color: Colors.white,
                  child: Text(
                    'result=$result',
                    style: TextStyle(fontSize: 50, color: Colors.black87),
                  ),
                ),
                Container(width: 60, height: 30, color: Colors.black87),
              ],
            ),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                    onPressed: () {
                      math('-');
                      setState(() {});
                    },
                  ),
                  FloatingActionButton(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                    onPressed: () {
                      math('+');
                      setState(() {});
                    },
                  ),
                  FloatingActionButton(
                    child: Text(
                      '*',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                    onPressed: () {
                      math('*');
                      setState(() {});
                    },
                  ),
                  FloatingActionButton(
                    child: Text(
                      '/',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                    onPressed: () {
                      math('/');
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
