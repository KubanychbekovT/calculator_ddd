import 'package:calculator_ddd/application/calculator_bloc/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


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
        context.read<CalculatorCubit>().addText('sin(');
      } else if (buttonText == 'cos') {
        context.read<CalculatorCubit>().addText('cos(');
      } else if (buttonText == 'tan') {
        context.read<CalculatorCubit>().addText('tan(');
      } else if (buttonText == '√x') {
        context.read<CalculatorCubit>().addText('sqrt(');
      } else if (buttonText == '1⁄x') {
        context.read<CalculatorCubit>().addText('1/');
      } else if (buttonText == '?') {
        context.read<CalculatorCubit>().addText('rand()');
      } else if (buttonText == 'ln') {
        context.read<CalculatorCubit>().addText('ln(');
      } else if (buttonText == 'log') {
        context.read<CalculatorCubit>().addText('log10(');
      } else if (buttonText == 'x^y') {
        context.read<CalculatorCubit>().addText('^');
      } else if (buttonText == 'X!') {
        context.read<CalculatorCubit>().addText('!');
      } else if (buttonText == 'AC') {
        context.read<CalculatorCubit>().clear();
      } else if (buttonText == '⌫') {
        context.read<CalculatorCubit>().backspace();
      } else if (buttonText == '=') {
        context.read<CalculatorCubit>().calculate();
      } else {
        context.read<CalculatorCubit>().addText(buttonText);
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