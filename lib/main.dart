import 'package:calculator_ddd/application/calculator_bloc/calculator_cubit.dart';
import 'package:calculator_ddd/presentation/core/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(
     BlocProvider(
      create: (context)=>CalculatorCubit(),
      child: CalculatorApp(),
    ),
  );
}