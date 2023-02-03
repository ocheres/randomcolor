import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color/colorcubit.dart';

///Реалізація класу для відображення сторінки тестового завдання
class ColorChanger extends StatelessWidget {
  ///Ініціалізація ColorCubit
  final ColorCubit cubit = ColorCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocBuilder<ColorCubit, Color>(
          bloc: cubit,
          builder: (context, color) => Center(
            child: GestureDetector(
              onTap: cubit.randomcolor,
              child: Container(
                alignment: Alignment.center,
                color: color,
                child: const Text(
                  'Hey there',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
