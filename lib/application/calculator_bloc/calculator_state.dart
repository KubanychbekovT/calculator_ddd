part of 'calculator_cubit.dart';
@freezed
abstract class CalculatorState with _$CalculatorState {
  factory CalculatorState(
    CalculatorBody equation,
    String result,
    String expression,
  ) = _CalculatorState;
  factory CalculatorState.initial()=>CalculatorState(CalculatorBody("0"), "0", "");
}
