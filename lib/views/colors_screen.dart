import 'package:flutter/material.dart';
import '../utils/component.dart';
import '../models/toku_model.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});
  final List<TokuModel> colors = const [
    TokuModel(
      soundpath: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'Black',
      imgPath: 'assets/images/colors/color_black.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'Brown',
      imgPath: 'assets/images/colors/color_brown.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/dusty_yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'Dusty yellow',
      imgPath: 'assets/images/colors/color_dusty_yellow.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/gray.wav',
      jpName: 'Grue',
      enName: 'Grey',
      imgPath: 'assets/images/colors/color_gray.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'Green',
      imgPath: 'assets/images/colors/color_green.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'Red',
      imgPath: 'assets/images/colors/color_red.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/white.wav',
      jpName: 'Shiroi',
      enName: 'White',
      imgPath: 'assets/images/colors/color_white.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/yellow.wav',
      jpName: 'Kiiro',
      enName: 'Yellow',
      imgPath: 'assets/images/colors/yellow.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          thickness: 2,
        ),
        itemBuilder: (context, index) => tokuBuilderItem(
          model: colors[index],
          context: context
        ),
        itemCount: colors.length,
      ),
    );
  }
}
