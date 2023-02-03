import 'package:calculator_ddd/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
Either<ValueFailure<String>,String> validateCalculatorBodyOnlyNumbers(String input){
    try{
       List<String> operationsList=["×","÷","X!","π","e","%", 'sin', 'cos', 'tan', '√x', '1⁄x', '?', 'ln', 'log', 'X!', 'AC', '⌫', '='];
       String checkInput=input;
       for (var operation in operationsList) {
         operation.trim();
           checkInput=checkInput.replaceAll(operation, "");
         checkInput=checkInput.replaceAll("(", "");
         checkInput=checkInput.replaceAll(")", "");
       }
       if(checkInput.isNotEmpty){
         double.parse(checkInput);
       }
       return right(input);
    }catch (e){
        return left(ValueFailure.incorrectFormatOfCalcBody(failure:input));
    }
}