import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:night/pagetwo.dart';

class Apppage extends StatefulWidget {
  const Apppage({Key? key}) : super(key: key);

  @override
  State<Apppage> createState() => _ApppageState();
}

class _ApppageState extends State<Apppage> {
  static const Icon moon = Icon(
    CupertinoIcons.moon_stars_fill,
    size: 100,
    color: Colors.black,
    shadows: [
      Shadow(
        color: Colors.blue,
        offset: Offset.zero,
        blurRadius: 10,
      )
    ],
  );
  static Icon sun = Icon(
    CupertinoIcons.sun_min_fill,
    size: 100,
    color: Colors.yellowAccent.shade700,
    shadows: const [
      Shadow(
        color: Colors.red,
        offset: Offset.zero,
        blurRadius: 10,
      )
    ],
  );
  static const Color night = Colors.black;
  static const Color light = Colors.white;
  bool isDay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDay ? light : night,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isDay = !isDay;
                });
              },
              child: isDay ? moon : sun,
            ),
            const SizedBox(height: 390,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>const Two(),),);
              },
              child: Container(
                width: 400,
                height: 70,
                color: isDay?Colors.black:Colors.yellowAccent,
                child:  Center(
                  child: Text(
                    "Page two",
                    style: TextStyle(fontSize: 30,color: isDay?Colors.white:Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
