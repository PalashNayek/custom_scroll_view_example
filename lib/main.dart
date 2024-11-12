import 'package:custom_scroll_view_example/di/setup_locator.dart';
import 'package:custom_scroll_view_example/screens/custom_scroll_view_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomScrollView Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CustomScrollViewScreen(),
    );
  }
}
