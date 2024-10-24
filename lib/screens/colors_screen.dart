import 'package:flutter/material.dart';
import '../components/component.dart';
import '../models/category_item_model.dart';

class Colorss extends StatelessWidget {
  const Colorss({super.key});
  final List<CategoryItemModel> colors = const [
    CategoryItemModel(
      soundpath: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
      imgPath: 'assets/images/colors/color_black.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      imgPath: 'assets/images/colors/color_brown.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/colors/dusty_yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      imgPath: 'assets/images/colors/color_dusty_yellow.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/colors/gray.wav',
      jpName: 'Grue',
      enName: 'grey',
      imgPath: 'assets/images/colors/color_gray.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'green',
      imgPath: 'assets/images/colors/color_green.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'red',
      imgPath: 'assets/images/colors/color_red.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
      imgPath: 'assets/images/colors/color_black.png',
    ),
    CategoryItemModel(
      soundpath: 'sounds/colors/white.wav',
      jpName: 'Shiroi',
      enName: 'white',
      imgPath: 'assets/images/colors/color_white.png',
    ),
    CategoryItemModel(
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
