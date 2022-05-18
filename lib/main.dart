import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[300],
          title: const Text("Dicee Roller"),
        ),
        backgroundColor: Colors.teal[300],
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //the following variables will hold the value of the dices
  int top_dice_number = 1;
  int bottom_dice_number = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Dice 1",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              width: 180,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  child: Image.asset('images/dice$top_dice_number.png'),
                  onPressed: () {
                    setState(() {
                      top_dice_number = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        const Divider(
          height: 20,
          thickness: 5,
          // indent: 20,
          endIndent: 0,
          color: Colors.white,
        ),
        const Text(
          "Dice 2",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              width: 180,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  child: Image.asset('images/dice$bottom_dice_number.png'),
                  onPressed: () {
                    setState(() {
                      bottom_dice_number = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      top_dice_number = Random().nextInt(6) + 1;
                      bottom_dice_number = Random().nextInt(6) + 1;
                    });
                  },
                  child: const Text(
                    "Dual Roll",
                    style: TextStyle(color: Colors.teal, fontSize: 17),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.white)),
            ),
          ],
        )
      ],
    );
  }
}
