import 'package:flutter/material.dart';
import 'package:tugas_19552011278/home.dart';
import 'package:tugas_19552011278/menu_datepicker.dart';


void main() =>runApp(new MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Aja',
      theme: ThemeData.light(),
      home : HomeScreen(),
    );
  }
}





