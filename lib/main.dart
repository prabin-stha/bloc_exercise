import 'package:bloc_navigation/core/routes/app_routes.dart';
import 'package:bloc_navigation/core/routes/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
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
    return MaterialApp(
      title: 'Bloc Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.homePage,
      onGenerateRoute: (settings) => _appRouter.onGenerateRoute(settings),
    );
  }
}

class MyWidget extends StatelessWidget {
  final ButtonStyle btnStyle;
  const MyWidget({super.key, required this.btnStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: btnStyle,
      child: const Text(""),
    );
  }
}
