import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/toku_model.dart';

Widget tokuBuilderItem({
  required TokuModel model,
}) =>
    Row(
      children: [
        Image.asset(
          model.imgPath!,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                model.jpName,
              ),
              Text(
                model.enName,
              ),
            ],
          ),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.red,
          ),
          onPressed: () async {
            final player = AudioPlayer();
            await player.play(
              AssetSource(model.soundpath),
            );
          },
        ),
      ],
    );
