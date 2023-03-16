import 'package:bloc_navigation/features/homepage/presentation/cubit/home_cubit.dart';
import 'package:bloc_navigation/features/second_feature/presentation/cubit/second_page_cubit.dart';
import 'package:bloc_navigation/core/routes/app_routes.dart';
import 'package:bloc_navigation/core/routes/models/second_page_argument.dart';
import 'package:bloc_navigation/features/third_feature/presentation/screens/third_page.dart';
import 'package:bloc_navigation/features/homepage/presentation/home_screen.dart';
import 'package:bloc_navigation/features/second_feature/presentation/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final SecondPageCubit _secondCubit;
  final HomeCubit _homeCubit;

  AppRouter()
      : _secondCubit = SecondPageCubit(),
        _homeCubit = HomeCubit();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homePage:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _secondCubit),
              BlocProvider.value(value: _homeCubit),
            ],
            child: const HomePage(),
          ),
        );

      case AppRoutes.secondPage:
        SecondPageArgument? payload;
        if (settings.arguments is SecondPageArgument) {
          payload = settings.arguments as SecondPageArgument;
        }
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _secondCubit),
              BlocProvider.value(value: _homeCubit),
            ],
            child: SecondPage(
              name: payload?.name,
            ),
          ),
        );

      case AppRoutes.thirdPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _homeCubit,
            child: const ThirdPage(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
    }
  }

  void dispose() {
    _secondCubit.close();
  }
}
