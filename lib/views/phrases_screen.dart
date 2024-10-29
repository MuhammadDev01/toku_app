import 'package:flutter/material.dart';
import 'package:toku_app/utils/component.dart';
import '../models/toku_model.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});
  final List<TokuModel> phrases = const [
    TokuModel(
      soundpath: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka ?',
      enName: 'are you coming?',
    ),
    TokuModel(
      soundpath: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'don\'t forget to subscribe',
    ),
    TokuModel(
      soundpath: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka ?',
      enName: 'how are you feeling ? ',
    ),
    TokuModel(
      soundpath: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    TokuModel(
      soundpath: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'i love programming',
    ),
    TokuModel(
      soundpath: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),
    TokuModel(
      soundpath: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka ?',
      enName: 'what is your name ?',
    ),
    TokuModel(
      soundpath: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no ?',
      enName: 'where are you going ?',
    ),
    TokuModel(
      soundpath: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, ikimasu',
      enName: 'yes i\'m coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(left: 12),
        separatorBuilder: (context, index) => Divider(thickness: 2),
        itemBuilder: (context, index) => tokuBuilderItem(
          model: phrases[index],
        ),
        itemCount: phrases.length,
      ),
    );
  }
}
