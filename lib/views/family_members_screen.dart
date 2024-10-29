import 'package:flutter/material.dart';
import 'package:toku_app/models/toku_model.dart';
import '../utils/component.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  final List<TokuModel> familyMembers = const [
    TokuModel(
      soundpath: 'sounds/family_members/daughter.wav',
      jpName: 'Musume',
      enName: 'daugther',
      imgPath: 'assets/images/family_members/family_daughter.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/father.wav',
      jpName: 'Chichioya',
      enName: 'father',
      imgPath: 'assets/images/family_members/family_father.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/grand_father.wav',
      jpName: 'ojisan',
      enName: 'Grand Father',
      imgPath: 'assets/images/family_members/family_grandfather.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/grand_mother.wav',
      jpName: 'Sobo',
      enName: 'Grand Mother',
      imgPath: 'assets/images/family_members/family_grandmother.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
      enName: 'mother',
      imgPath: 'assets/images/family_members/family_mother.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/older_bother.wav',
      jpName: 'Nisan',
      enName: 'older brother',
      imgPath: 'assets/images/family_members/family_older_brother.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/older_sister.wav',
      jpName: 'Ane',
      enName: 'older sister',
      imgPath: 'assets/images/family_members/family_older_sister.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/son.wav',
      jpName: 'Musuko',
      enName: 'son',
      imgPath: 'assets/images/family_members/family_son.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/younger_brohter.wav',
      jpName: 'Otōto',
      enName: 'younger brother',
      imgPath: 'assets/images/family_members/family_younger_brother.png',
    ),
    TokuModel(
      soundpath: 'sounds/family_members/younger_sister.wav',
      jpName: 'Imōto',
      enName: 'younger sister',
      imgPath: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyMember'),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          thickness: 2,
        ),
        itemBuilder: (context, index) => tokuBuilderItem(
          model: familyMembers[index],
          context: context,
        ),
        itemCount: familyMembers.length,
      ),
    );
  }
}
