import 'package:flutter/material.dart';
import 'package:fooderlich_app/card1.dart';
import 'package:fooderlich_app/card2.dart';
import 'package:fooderlich_app/card3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _screens = [
    Card1(),
    Card2(),
    Card3(),
  ];

  int _screenIndex = 0;

  void _screenChnaged(int i) {
    setState(() {
      _screenIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fooldelich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: _screens[_screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screenIndex,
        onTap: (val) {
          _screenChnaged(val);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: '',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article,
            ),
            label: '',
            tooltip: '',
          ),
        ],
      ),
    );
  }
}
