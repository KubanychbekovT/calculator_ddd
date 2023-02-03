import 'package:calculator_ddd/application/calculator_bloc/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/calculator.dart';


@immutable
class AppColor {
  static const Color grey = Color.fromARGB(255, 134, 134, 134);
  static const Color red = Color.fromARGB(255, 255, 0, 0);

  const AppColor._();
}

class CalculatorView extends HookConsumerWidget {
  const CalculatorView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          children: [
            const CalculatorResult(),
            Divider(height: size.height * 0.01, thickness: 1, color: AppColor.grey.withOpacity(0.2)),
            const CalculatorButtons(),
          ],
        ),
      ),
    );
  }
}

class CalculatorResult extends HookConsumerWidget {
  const CalculatorResult({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<CalculatorCubit, CalculatorState>(
  builder: (context, state) {
    return SizedBox(
      height: size.height * 0.39,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: const Alignment(0.9, 1),
            child: Text(state.equation.getOrCrash(), style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w400)),
          ),
          SizedBox(height: size.height * 0.05),
          Align(
            alignment: const Alignment(0.9, 1),
            child: Text(state.result, style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  },
);
  }
}

class CalculatorButtons extends HookConsumerWidget {
  const CalculatorButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.6,
      child: Table(
        children: const [
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, '2nd'),
              CalculatorButton(AppColor.grey, 1, 'deg'),
              CalculatorButton(AppColor.grey, 1, 'sin'),
              CalculatorButton(AppColor.grey, 1, 'cos'),
              CalculatorButton(AppColor.grey, 1, 'tan'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, 'x^y'),
              CalculatorButton(AppColor.grey, 1, 'log'),
              CalculatorButton(AppColor.grey, 1, 'ln'),
              CalculatorButton(AppColor.grey, 1, '('),
              CalculatorButton(AppColor.grey, 1, ')'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, '√x'),
              CalculatorButton(AppColor.red, 1, 'AC'),
              CalculatorButton(AppColor.red, 1, '⌫'),
              CalculatorButton(AppColor.red, 1, '%'),
              CalculatorButton(AppColor.red, 1, '÷'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, 'X!'),
              CalculatorButton(AppColor.grey, 1, '7'),
              CalculatorButton(AppColor.grey, 1, '8'),
              CalculatorButton(AppColor.grey, 1, '9'),
              CalculatorButton(AppColor.red, 1, '×'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, '1⁄x'),
              CalculatorButton(AppColor.grey, 1, '4'),
              CalculatorButton(AppColor.grey, 1, '5'),
              CalculatorButton(AppColor.grey, 1, '6'),
              CalculatorButton(AppColor.red, 1, '-'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, 'π'),
              CalculatorButton(AppColor.grey, 1, '1'),
              CalculatorButton(AppColor.grey, 1, '2'),
              CalculatorButton(AppColor.grey, 1, '3'),
              CalculatorButton(AppColor.red, 1, '+'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, '?'),
              CalculatorButton(AppColor.grey, 1, 'e'),
              CalculatorButton(AppColor.grey, 1, '0'),
              CalculatorButton(AppColor.grey, 1, '.'),
              CalculatorButton(AppColor.red, 1, '='),
            ],
          ),
        ],
      ),
    );
  }
}

