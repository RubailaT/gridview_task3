import 'package:flutter/material.dart';
import 'package:gridview_task3/grid_page1.dart';
import 'package:gridview_task3/model_grid.dart';

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
      home: Gridviewpage(),

    );
  }
}
