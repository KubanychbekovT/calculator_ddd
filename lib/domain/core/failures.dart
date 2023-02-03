import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';


@freezed
abstract class ValueFailure<T> with _$ValueFailure {
  const factory ValueFailure.decimalCtaMessage({
    required T failure
  })=DecimalCtaMessage<T>;
  const factory ValueFailure.incorrectFormatOfCalcBody({
    required T failure
  })=IncorrectFormatOfCalcBody<T>;
}