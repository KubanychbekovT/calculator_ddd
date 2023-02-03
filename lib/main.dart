import 'package:calculator_ddd/application/calculator_bloc/calculator_cubit.dart';
import 'package:calculator_ddd/injection.dart';
import 'package:calculator_ddd/presentation/core/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';


void main()async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
     BlocProvider(
      create: (context)=>getIt<CalculatorCubit>(),
      child: CalculatorApp(),
    ),
  );
}