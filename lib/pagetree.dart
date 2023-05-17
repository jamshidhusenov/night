import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:night/app.dart';

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const Apppage(),
              ),
            );
          },
          child: Container(
            width: 400,
            height: 70,
            color: Colors.pinkAccent,
            child: Center(child: Text("Home Page",style: TextStyle(fontSize: 30,color: Colors.black),)),
          ),
        ),
      ),
    );
  }
}
