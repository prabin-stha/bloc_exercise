import 'package:bloc_navigation/core/domain/entity/freezed_test.dart';
import 'package:bloc_navigation/features/homepage/presentation/cubit/home_cubit.dart';
import 'package:bloc_navigation/features/homepage/presentation/cubit/home_cubit_state.dart';
import 'package:bloc_navigation/features/second_feature/presentation/cubit/second_page_cubit.dart';
import 'package:bloc_navigation/core/routes/app_routes.dart';
import 'package:bloc_navigation/core/routes/models/second_page_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // const FreezedTest ft = FreezedTest(name: 'Prabin Shrestha', age: 21);
    // final ftCpy = ft.copyWith(name: 'Prabin Shrestha');

    // debugPrint(ft.toString());
    // debugPrint(ftCpy.toString());

    // debugPrint('Print ${(ft == ftCpy).toString()}');

    int performOperation(int operand, FreezedNestedTest freezedNestedTest) {
      return freezedNestedTest.when(
        add: (value) => operand + value,
        subtract: (value) => operand - value,
      );
    }

    final int calculate = performOperation(2, const FreezedNestedTest.add(6));
    debugPrint(calculate.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.secondPage,
                arguments: SecondPageArgument('Prabin Shrestha'),
              ),
              child: const Text('Go To Page Two'),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.thirdPage),
              child: const Text('Go To Page Three'),
            ),
          ],
        ),
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Center(
              child: Text('Home Bloc ${state.count}'),
            );
          },
        ),
        BlocBuilder<SecondPageCubit, double>(
          builder: (context, state) {
            return Center(
              child: Text('Second Bloc ${state.toString()}'),
            );
          },
        )
      ]),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: 'Add',
            onPressed: () => BlocProvider.of<HomeCubit>(context).increment(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'Remove',
            onPressed: () => BlocProvider.of<HomeCubit>(context).decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
