import 'package:flutter/material.dart';
import 'package:toku_app/components/component.dart';
import 'package:toku_app/models/category_item_model.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  final List<CategoryItemModel> numbers = const [
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'ichi',
      enName: 'one',
      imgPath: 'assets/images/numbers/number_one.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
      imgPath: 'assets/images/numbers/number_two.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_three_sound.mp3',
      jpName: 'San',
      enName: 'three',
      imgPath: 'assets/images/numbers/number_three.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_four_sound.mp3',
      jpName: 'Sti',
      enName: 'four',
      imgPath: 'assets/images/numbers/number_four.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_five_sound.mp3',
      jpName: 'Go',
      enName: 'five',
      imgPath: 'assets/images/numbers/number_five.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_six_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
      imgPath: 'assets/images/numbers/number_six.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_seven_sound.mp3',
      jpName: 'setun',
      enName: 'seven',
      imgPath: 'assets/images/numbers/number_seven.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_eight_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
      imgPath: 'assets/images/numbers/number_eight.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_nine_sound.mp3',
      jpName: 'ichi',
      enName: 'nine',
      imgPath: 'assets/images/numbers/number_nine.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/numbers/number_ten_sound.mp3',
      jpName: 'idaiu',
      enName: 'ten',
      imgPath: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => defaultCategoryItem(
          model: numbers[index],
          color: Colors.teal,
        ),
        itemCount: numbers.length,
      ),
    );
  }
}
