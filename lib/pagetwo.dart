import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:night/app.dart';
import 'package:night/pagetree.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Page :",
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.blue,
                            blurRadius: 10,
                            offset: Offset.zero)
                      ],
                    ),
                  ),
                  Icon(
                    Icons.looks_two_outlined,
                    size: 100,
                    color: Colors.pinkAccent,
                    shadows: [
                      Shadow(
                          color: Colors.blue,
                          blurRadius: 10,
                          offset: Offset.zero)
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const Three(),
                  ),
                );
              },
              child: Container(
                width: 400,
                height: 70,

                decoration:  BoxDecoration(
                  boxShadow:  [
                     
                  ],
                  border: Border.all(color: Colors.pinkAccent,width: 7),
                ),
                child: const Center(
                  child: Text(
                    "Page Three",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.blue,
                            blurRadius: 10,
                            offset: Offset.zero)
                      ],
                    ),
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
