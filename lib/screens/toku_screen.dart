import 'package:flutter/material.dart';
import 'package:toku_app/models/category_item_model.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/family_members_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';
import 'package:toku_app/screens/number_screen.dart';

class TokuScreen extends StatelessWidget {
  TokuScreen({super.key});

  final List<CategoryItemModel> categoriesList = [
    CategoryItemModel(
      page: NumbersScreen(),
      categoryName: 'Numbers',
      categoryIconImage: 'assets/numbers.png',
    ),
    CategoryItemModel(
      page: PhrasesScreen(),
      categoryName: 'Phrases',
      categoryIconImage: 'assets/pharses.png',
    ),
    CategoryItemModel(
      page: FamilyMembersScreen(),
      categoryName: 'Family Members',
      categoryIconImage: 'assets/familymembers.png',
    ),
    CategoryItemModel(
      page: ColorsScreen(),
      categoryName: 'Colors',
      categoryIconImage: 'assets/colors.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome To Toku',
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(12),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1.2,
        children: categoriesList
            .map(
              (categoryModel) =>
                  categoryGridViewBuilder(categoryModel, context),
            )
            .toList(),
      ),
    );
  }
}

Widget categoryGridViewBuilder(CategoryItemModel model, BuildContext context) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => model.page,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              model.categoryIconImage,
              height: 70,
            ),
            SizedBox(height: 12),
            Text(model.categoryName),
          ],
        ),
      ),
    );
