import 'package:bloc_navigation/cubit/second_page_cubit.dart';
import 'package:bloc_navigation/route/app_routes.dart';
import 'package:bloc_navigation/route/model/second_page_argument.dart';
import 'package:bloc_navigation/ui/screens/third_page.dart';
import 'package:bloc_navigation/ui/screens/home_page.dart';
import 'package:bloc_navigation/ui/screens/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final SecondPageCubit _secondCubit;

  AppRouter() : _secondCubit = SecondPageCubit();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homePage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _secondCubit,
            child: const HomePage(),
          ),
        );

      case AppRoutes.secondPage:
        SecondPageArgument? payload;
        if (settings.arguments is SecondPageArgument) {
          payload = settings.arguments as SecondPageArgument;
        }
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _secondCubit,
            child: SecondPage(
              name: payload?.name,
            ),
          ),
        );

      case AppRoutes.thirdPage:
        return MaterialPageRoute(
          builder: (_) => const ThirdPage(),
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
