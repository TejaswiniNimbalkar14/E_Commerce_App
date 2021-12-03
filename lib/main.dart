import 'package:flutter/material.dart';
import 'package:suture_house_demo/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(
        // text: 'Hello',
        // hintText: 'Search Products..',
        // onChanged: (String value){ },
      ),
    );
  }
}
