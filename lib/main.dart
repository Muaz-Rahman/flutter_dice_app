import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewApp()
  ));
}

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  int num=1;
  int num1=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
            child: Text("Two-Dice Roll Simulator",
              style: TextStyle(
                letterSpacing: 5,
                wordSpacing: 1
              ),
            )
        ),
        titleTextStyle: const TextStyle(
            fontSize: 20,
            wordSpacing: 5
        ),
      ),

      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num = Random().nextInt(6)+1;
                    num1 = Random().nextInt(6)+1;
                  });
                },
                child: Image(image: AssetImage("images/dice$num.png"
                )
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num = Random().nextInt(6)+1;
                    num1 = Random().nextInt(6)+1;
                  });
                },
                child: Image(image: AssetImage("images/dice$num1.png"
                )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
