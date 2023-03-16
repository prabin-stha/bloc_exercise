import 'package:bloc_navigation/cubit/home_cubit.dart';
import 'package:bloc_navigation/cubit/second_page_cubit.dart';
import 'package:bloc_navigation/route/app_routes.dart';
import 'package:bloc_navigation/route/model/second_page_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        BlocBuilder<HomeCubit, int>(
          builder: (context, state) {
            return Center(
              child: Text('Home Bloc ${state.toString()}'),
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
