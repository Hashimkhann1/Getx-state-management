import 'package:flutter/material.dart';
import 'package:getxpract/view/counter_example.dart';
import 'package:getxpract/view/example_two.dart';
import 'package:getxpract/view/favoutite_iitem_example.dart';
import 'package:getxpract/view/switch_btn_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CounterExample(),
      // home: ExampleTwo(),
      // home: SwitchBtnExample(),
      home: FavouruteItemExample(),
    );
  }
}
