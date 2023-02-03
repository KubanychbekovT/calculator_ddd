// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:calculator_ddd/application/calculator_bloc/calculator_cubit.dart'
    as _i5;
import 'package:calculator_ddd/domain/calculator/i_calculator_facade.dart'
    as _i3;
import 'package:calculator_ddd/infrastructure/calculator/calculator_facade.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ICalculatorFacade>(() => _i4.CalculatorFacade());
    gh.factory<_i5.CalculatorCubit>(
        () => _i5.CalculatorCubit(gh<_i3.ICalculatorFacade>()));
    return this;
  }
}
