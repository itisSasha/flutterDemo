import 'package:demo1/pages/airplay_screen.dart';
import 'package:demo1/pages/email_screen.dart';
import 'package:demo1/pages/home_screen.dart';
import 'package:demo1/pages/pages_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = [];


  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color:_BottomNavigationColor,
                ),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color:_BottomNavigationColor,
                ),
                label: 'Email'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color:_BottomNavigationColor,
                ),
                label: 'Pages'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color:_BottomNavigationColor,
                ),
                label: 'Airplay'
            ),
          ],
        // 选中的地方会高亮
        currentIndex: _currentIndex,
        // index是自动传入的
        onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
        },
      ),
    );
  }
}
