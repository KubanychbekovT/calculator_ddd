// import 'package:calculator_ddd/domain/core/value_objects.dart';
// import 'package:dartz/dartz.dart';
//
// class CalculatorBody extends ValueObject<String> {
//   @override
//   final Either<CalculatorBody<String>, String> value;
//
//   factory CalculatorBody(String input) {
//     return CalculatorBody._(
//       validateCalculatorBody(input),
//     );
//   }
//
//   const CalculatorBody._(this.value);
// }