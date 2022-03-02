import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginScreen(),
    );
  }

  Widget loginScreen() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(0, 200, 0, 50),
                    child: FlutterLogo()),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            )),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            )),
            Container(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Log In"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                ),
              )),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextButton(
                onPressed: () {},
                child: Text("Forgot password?",
                style: TextStyle(
                  color: Colors.grey[700],
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}