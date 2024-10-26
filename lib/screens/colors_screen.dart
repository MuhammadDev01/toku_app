import 'package:flutter/material.dart';
import '../components/component.dart';
import '../models/toku_model.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});
  final List<TokuModel> colors = const [
    TokuModel(
      soundpath: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
      imgPath: 'assets/images/colors/color_black.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      imgPath: 'assets/images/colors/color_brown.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/dusty_yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      imgPath: 'assets/images/colors/color_dusty_yellow.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/gray.wav',
      jpName: 'Grue',
      enName: 'grey',
      imgPath: 'assets/images/colors/color_gray.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'green',
      imgPath: 'assets/images/colors/color_green.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'red',
      imgPath: 'assets/images/colors/color_red.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
      imgPath: 'assets/images/colors/color_black.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/white.wav',
      jpName: 'Shiroi',
      enName: 'white',
      imgPath: 'assets/images/colors/color_white.png',
    ),
    TokuModel(
      soundpath: 'sounds/colors/yellow.wav',
      jpName: 'Kiiro',
      enName: 'yellow',
      imgPath: 'assets/images/colors/yellow.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => defaultCategoryItem(
          model: colors[index],
          color: Colors.purple,
        ),
        itemCount: colors.length,
      ),
    );
  }
}
