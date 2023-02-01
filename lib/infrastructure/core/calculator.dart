import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/calculator/calculator_notifier.dart';

class CalculatorButton extends HookConsumerWidget {
  const CalculatorButton(this.color, this.height, this.text, {super.key});

  final String text;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    void buttonPressed(String buttonText) {
      if (buttonText == 'sin') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('sin(');
      } else if (buttonText == 'cos') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('cos(');
      } else if (buttonText == 'tan') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('tan(');
      } else if (buttonText == '√x') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('sqrt(');
      } else if (buttonText == '1⁄x') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('1/');
      } else if (buttonText == '?') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('rand()');
      } else if (buttonText == 'ln') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('ln(');
      } else if (buttonText == 'log') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('log10(');
      } else if (buttonText == 'x^y') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('^');
      } else if (buttonText == 'X!') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('!');
      } else if (buttonText == 'AC') {
        ref.read(calculatorStateNotifierProvider.notifier).clear();
      } else if (buttonText == '⌫') {
        ref.read(calculatorStateNotifierProvider.notifier).backspace();
      } else if (buttonText == '=') {
        ref.read(calculatorStateNotifierProvider.notifier).calculate();
      } else {
        ref.read(calculatorStateNotifierProvider.notifier).addText(buttonText);
      }
    }

    return SizedBox(
      height: size.height * 0.6 / 7 * height,
      child: TextButton(
        onPressed: () => buttonPressed(text),
        style: TextButton.styleFrom(padding: EdgeInsets.zero, shape: const CircleBorder(), foregroundColor: Colors.grey),
        child: Container(alignment: Alignment.center, child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: color))),
      ),
    );
  }
}