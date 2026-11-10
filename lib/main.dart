import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/actgrid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void btnsign() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => actgrid(
          title: "hi",
        ),
      ),
    );
    print("hi");
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      Column(
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
                  color: Colors.greenAccent),
              padding: EdgeInsets.all(10),
              child: Text("sign in"),
            ),
          )
        ],
      ),
      Center(child: Text("صفحه دوم")),
      Center(child: Text("صفحه سوم")),
    ];

    return Scaffold(
      body: SafeArea(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'خانه'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'صفحه ۲'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_outlined), label: 'صفحه ۳'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
