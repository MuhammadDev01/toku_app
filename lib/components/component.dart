import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/toku_model.dart';

Widget defaultCategory({
  required void Function()? onTap,
  required Color color,
  required String categoryName,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        alignment: Alignment.centerLeft,
        color: color,
        width: double.infinity,
        height: 70.0,
        child: Text(
          categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

Widget defaultCategoryItem({
  required Color color,
  required TokuModel model,
}) =>
    Container(
      color: color,
      child: Row(
        children: [
          Container(
            color: Colors.pink,
            height: 100.0,
            child: Image.asset(
              model.imgPath!,
            ),
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
                  model.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  model.enName,
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
                AssetSource(model.soundpath),
              );
            },
          ),
        ],
      ),
    );
