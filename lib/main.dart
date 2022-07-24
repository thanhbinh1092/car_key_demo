// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, sort_child_properties_last

import 'package:demo_project/CarView.dart';
import 'package:demo_project/MotorCycleView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool isCarSelected = true;
  bool isMotorCycleSeleted = false;
  late List<Widget> _pages = [
    CarView(),
    MotorCycleView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        isCarSelected = true;
        isMotorCycleSeleted = false;
      } else {
        isCarSelected = false;
        isMotorCycleSeleted = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030511),
      body: Container(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          // color: Color(0xff091329),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset(
                    'assets/car.png',
                    color: (isCarSelected)
                        ? Colors.white
                        : Colors.white.withOpacity(0.45),
                  ),
                  height: 37,
                ),
                label: 'Car',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset(
                    'assets/motorcycle.png',
                    color: (isMotorCycleSeleted)
                        ? Colors.white
                        : Colors.white.withOpacity(0.45),
                  ),
                  height: 37,
                ),
                label: 'MotorCycle',
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedLabelStyle: TextStyle(
                color: Colors.white.withOpacity(0.45), fontFamily: 'Poppins'),
            selectedLabelStyle: TextStyle(fontFamily: 'Poppins'),
            backgroundColor: Color(0xff091329),
            unselectedItemColor: Colors.white.withOpacity(0.45),
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
