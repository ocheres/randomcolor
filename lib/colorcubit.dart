import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';

///Створення константної змінної для рандомайзера кольора
const double base = 0xFFFFFF;

///Cubit для тестового завдання
class ColorCubit extends Cubit<Color> {
  ///конструктор класу з кольором за замовчуванням
  ColorCubit() : super(const Color(0xffffffff));

  ///функція яка рандомить кольори
  void randomcolor() => emit(
        Color((math.Random().nextDouble() * base).toInt()).withOpacity(1.0),
      );
}
