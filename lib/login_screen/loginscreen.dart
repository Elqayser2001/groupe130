import 'package:eraasoft/bmi_project/main.dart';
import 'package:flutter/material.dart';

main() {
  runApp(loginscreen());
}

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: homescreen());
  }
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

bool x = true;
var s =TextFormField();

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250,
        title: Column(
          children: [Text('Login'),SizedBox(height: 50), Text('Enter a beautiful world')],
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white12,
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
                hintText: 'Your Email',
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: TextFormField(
              obscureText: x,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white12,
                border: OutlineInputBorder(),
                prefix: Icon(Icons.lock_outline),
                hintText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      x = !x;
                    });
                  },
                  icon: Icon(
                    x
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 300),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(18.0),
            child: InkWell(
              onTap: () {
                print("Login Clicked!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return MyApp();
                    },
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 100),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Text('Login', style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't Have An Account?", style: TextStyle(fontSize: 15)),
              SizedBox(width: 15),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Register Now",
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
