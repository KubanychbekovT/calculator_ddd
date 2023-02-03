import 'package:calculator_ddd/domain/calculator/i_calculator_facade.dart';
import 'package:calculator_ddd/domain/calculator/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:meta/meta.dart';
import 'dart:math' as math;
part 'calculator_state.dart';
part 'calculator_cubit.freezed.dart';
@injectable
class CalculatorCubit extends Cubit<CalculatorState> {
  ICalculatorFacade iCalculatorFacade;
  CalculatorCubit(this.iCalculatorFacade) : super(CalculatorState.initial());
  void clear() {
    emit(CalculatorState.initial());
  }

  void backspace() {
    if (state.equation.getOrCrash().length == 1) {
      clear();
    } else {
      emit(state.copyWith(
        equation: CalculatorBody(state.equation.getOrCrash().substring(
          0,
          state.equation.getOrCrash().length - 1,
        ),
        )
      ));
    }
  }

  void calculate() {
    final expression = state.equation.getOrCrash()
        .replaceAll(
      '×',
      '*',
    )
        .replaceAll(
      '÷',
      '/',
    )
        .replaceAll(
      'X!',
      '!',
    )
        .replaceAll(
      'π',
      '${math.pi}',
    )
        .replaceAll(
      'e',
      '${math.e}',
    );
    final result = iCalculatorFacade.calculateExpression(expression);
    emit(state.copyWith(result: result));
  }


  void addText(String text) {
    if (state.equation.getOrCrash() == '0') {
      emit(state.copyWith(equation: CalculatorBody(text)));
    } else {
      emit(state.copyWith(equation: CalculatorBody(state.equation.getOrCrash()+text)));
    }
  }
}
