import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/toku_model.dart';

Widget tokuBuilderItem({
  required TokuModel model,
}) =>
    Row(
      children: [
        if (model.imgPath != null)
          Image.asset(
            model.imgPath!,
            height: 100,
          ),
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              model.jpName,
            ),
            subtitle: Text(
              model.enName,
            ),
            trailing: IconButton(
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
          ),
        ),
      ],
    );
