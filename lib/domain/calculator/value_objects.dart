import 'package:calculator_ddd/domain/core/failures.dart';
import 'package:calculator_ddd/domain/core/value_objects.dart';
import 'package:calculator_ddd/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class CalculatorBody extends ValueObject<String> {
  // @override

  factory CalculatorBody(String input) {
    return CalculatorBody._(
      validateCalculatorBodyOnlyNumbers(input),
    );
  }

  const CalculatorBody._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

}