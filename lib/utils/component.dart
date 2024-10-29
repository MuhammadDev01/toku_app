import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toku_app/models/toku_model.dart';

Widget tokuBuilderItem({
  required TokuModel model,
  required BuildContext context,
}) =>
    Row(
      children: [
        if (model.imgPath != null)
          Container(
            margin: EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              model.imgPath!,
              height: 100,
            ),
          ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
             'Jp: ${model.jpName}',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            subtitle: Text(
             'Eng: ${model.enName}',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Colors.teal,
              ),
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
