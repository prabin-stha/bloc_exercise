import 'package:bloc_navigation/features/homepage/presentation/cubit/home_cubit.dart';
import 'package:bloc_navigation/features/homepage/presentation/cubit/home_cubit_state.dart';
import 'package:bloc_navigation/features/second_feature/presentation/cubit/second_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  final String? name;
  const SecondPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Center(
              child: Text(name ?? "Name not available"),
            ),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Text('Home Bloc ${state.count}');
            },
          ),
          BlocBuilder<SecondPageCubit, double>(
            builder: (context, state) {
              return Text('Second Screen Bloc ${state.toString()}');
            },
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: 'Add',
            onPressed: () =>
                BlocProvider.of<SecondPageCubit>(context).increment(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'Remove',
            onPressed: () =>
                BlocProvider.of<SecondPageCubit>(context).decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
