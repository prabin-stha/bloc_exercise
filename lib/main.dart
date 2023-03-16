import 'package:bloc_navigation/cubit/home_cubit.dart';
import 'package:bloc_navigation/cubit/second_page_cubit.dart';
import 'package:bloc_navigation/route/app_routes.dart';
import 'package:bloc_navigation/route/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  void dispose() {
    super.dispose();
    _appRouter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => HomeCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc Navigation',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.homePage,
        onGenerateRoute: (settings) => _appRouter.onGenerateRoute(settings),
      ),
    );
  }
}
