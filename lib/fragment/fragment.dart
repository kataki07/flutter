
import 'package:flutter/material.dart';





class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void btnsign() {
    print("sign in");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("hi"),
                SizedBox(width: 10),
                Text("hello"),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: btnsign,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                ),
                padding: EdgeInsets.all(10),
                child: Text("sign in"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
