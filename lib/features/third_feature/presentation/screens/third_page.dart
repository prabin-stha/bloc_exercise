import 'package:bloc_navigation/features/homepage/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            children: [
              const Text('This can access first cubit but not second.'),
              BlocBuilder<HomeCubit, int>(
                builder: (context, state) {
                  return Text('Home Cubit ${state.toString()}');
                },
              ),
              // The below code gives an error
              // BlocBuilder<SecondPageCubit, double>(
              //   builder: (context, state) {
              //     return Text('Second Page Cubit ${state.toString()}');
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
