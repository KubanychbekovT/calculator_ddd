import 'package:calculator_ddd/domain/calculator/i_calculator_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:math_expressions/math_expressions.dart';
@LazySingleton(as:ICalculatorFacade)
class CalculatorFacade implements ICalculatorFacade{
  @override
  String calculateExpression(String expression) {
    try {
      final parser = Parser();
      final exp = parser.parse(expression);
      final contextModel = ContextModel();
      final result = exp.evaluate(EvaluationType.REAL, contextModel);
      return result.toString();
    } catch (e) {
      return 'Error';
    }
  }

}