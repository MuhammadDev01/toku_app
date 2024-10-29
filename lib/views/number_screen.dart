import 'package:flutter/material.dart';
import 'package:toku_app/utils/component.dart';
import 'package:toku_app/models/toku_model.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  final List<TokuModel> numbers = const [
    TokuModel(
      soundpath: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'ichi',
      enName: 'one',
      imgPath: 'assets/images/numbers/number_one.png',
    ),
    TokuModel(
      soundpath: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
      imgPath: 'assets/images/numbers/number_two.png',
    ),
    TokuModel(
      soundpath: 'sounds/numbers/number_three_sound.mp3',
      jpName: 'San',
      enName: 'three',
      imgPath: 'assets/images/numbers/number_three.png',
    ),
    TokuModel(
      soundpath: 'sounds/numbers/number_four_sound.mp3',
      jpName: 'Sti',
      enName: 'four',
      imgPath: 'assets/images/numbers/number_four.png',
    ),
    TokuModel(
      soundpath: 'sounds/numbers/number_five_sound.mp3',
      jpName: 'Go',
      enName: 'five',
      imgPath: 'assets/images/numbers/number_five.png',
    ),
    TokuModel(
      soundpath: 'sounds/numbers/number_six_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
      imgPath: 'assets/images/numbers/number_six.png',
    ),
    TokuModel(
      soundpath: 'sounds/numbers/number_seven_sound.mp3',
      jpName: 'setun',
      enName: 'seven',
      imgPath: 'assets/images/numbers/number_seven.png',
    ),
    TokuModel(
      soundpath: 'sounds/numbers/number_eight_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
      imgPath: 'assets/images/numbers/number_eight.png',
    ),
    TokuModel(
      soundpath: 'sounds/numbers/number_nine_sound.mp3',
      jpName: 'ichi',
      enName: 'nine',
      imgPath: 'assets/images/numbers/number_nine.png',
    ),
    TokuModel(
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
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          thickness: 2,
        ),
        itemBuilder: (context, index) => tokuBuilderItem(
          model: numbers[index],
        ),
        itemCount: numbers.length,
      ),
    );
  }
}
