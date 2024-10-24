import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/category_item_model.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});
  final List<CategoryItemModel> phrases = const [
    CategoryItemModel(
      soundpath: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka ?',
      enName: 'are you coming?',
    ),
    CategoryItemModel(
      soundpath: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'don\'t forget to subscribe',
    ),
    CategoryItemModel(
      soundpath: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka ?',
      enName: 'how are you feeling ? ',
    ),
    CategoryItemModel(
      soundpath: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    CategoryItemModel(
      soundpath: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'i love programming',
    ),
    CategoryItemModel(
      soundpath: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),
    CategoryItemModel(
      soundpath: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka ?',
      enName: 'what is your name ?',
    ),
    CategoryItemModel(
      soundpath: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no ?',
      enName: 'where are you going ?',
    ),
    CategoryItemModel(
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
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => phraseItem(
          phrase: phrases[index],
          color: Colors.blue,
        ),
        itemCount: phrases.length,
      ),
    );
  }
}

Widget phraseItem({
  required Color color,
  required CategoryItemModel phrase,
}) =>
    Container(
      color: color,
      child: Row(
        children: [
          Container(
            color: Colors.amber[50],
            height: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(
                AssetSource(phrase.soundpath),
              );
            },
          ),
        ],
      ),
    );
