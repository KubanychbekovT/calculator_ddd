import 'package:go_router/go_router.dart';

import '../calculator/calculator_page.dart';



GoRouter router() {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'calculator',
        builder: (context, state) => const CalculatorView(),
      ),
    ],
  );
}