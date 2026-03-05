import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// final, var
// final 은 처음 지정된 값으로 락 된다
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientConatiner extends StatelessWidget {
  const GradientConatiner({super.key, required this.colors});

  GradientConatiner.purpleGradient({super.key})
    : colors = [Colors.red, Colors.purple];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
