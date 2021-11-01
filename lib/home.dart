import 'package:flutter/material.dart';
import 'package:tugas_19552011278/menu_datepicker.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tugas_19552011278/menu_timepicker.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int Index) {
    setState(() {
        _selectedIndex = Index;
    });

    pageController.jumpToPage(Index);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RidwanNW_19552011278'),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Text('Ridwan Nur Wahid - 19552011278'),
          DatePicker(),
          TimePicker(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items : const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label:'DatePicker'),
            BottomNavigationBarItem(icon: Icon(Icons.access_time_filled), label:'TimePicker'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor : Colors.black,
          onTap: onTapped,
      ),
    );
  }
}