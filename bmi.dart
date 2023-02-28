import 'Human.dart';
import 'dart:io';

void calculateBmi() {
  Human person1 = new Human();
  print('enter your name: ');
  String? name = person1.name = stdin.readLineSync();
  print('enter your age: ');
  int age = person1.age = int.parse(stdin.readLineSync()!);
  print('enter your height in metre: ');
  double height = person1.height = double.parse(stdin.readLineSync()!);
  print('enter your weight: ');
  double weight = person1.weight = double.parse(stdin.readLineSync()!);
  double bmi = weight / (height * height);

  if (bmi <= 18.5) {
    print(
        'Your name is $name, you have $age years old and your bmi equals $bmi which means you are Underweight');
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    print(
        'Your name is $name, you have $age years old and your bmi equals $bmi which means you are Normal weight');
  } else if (bmi >= 25 && bmi <= 29.9) {
    print(
        'Your name is $name, you have $age years old and your bmi equals $bmi which means you are Overweight');
  } else if (bmi >= 30) {
    print(
        'Your name is $name, you have $age years old and your bmi equals $bmi which means you are Obese');
  }
}
