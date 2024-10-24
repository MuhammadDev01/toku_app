import 'package:flutter/material.dart';
import 'package:toku_app/components/component.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/family_members_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';
import 'package:toku_app/screens/number_screen.dart';

class TokuScreen extends StatelessWidget {
  const TokuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Toku',
        ),
      ),
      body: Column(children: [
        Expanded(
          child: defaultCategory(
            color: Colors.deepOrange,
            categoryName: 'Numbers',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersScreen(),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: defaultCategory(
            color: Colors.green,
            categoryName: 'Family Members',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FamilyMember(),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: defaultCategory(
            color: Colors.deepPurple,
            categoryName: 'Colors',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Colorss(),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: defaultCategory(
            color: Colors.cyan,
            categoryName: 'Phrases',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhrasesScreen(),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
