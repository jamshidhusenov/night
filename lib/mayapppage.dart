import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:night/app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Apppage(),
    );
  }
}
