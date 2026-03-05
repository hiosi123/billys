import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

// stateful widget is always with 2 classes
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1; // 1 <> 6

    setState(() {
      currentDiceRoll = diceRoll;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 40,
            // ),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 30),
          ),
          onPressed: rollDice,
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
