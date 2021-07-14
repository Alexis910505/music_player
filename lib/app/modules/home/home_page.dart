import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/app/data/model/local/songs.dart';
import 'package:music_player/app/modules/home/home_controller.dart';
import 'package:music_player/app/modules/music_player/local_widget/circle_clipper_widget.dart';
import 'package:music_player/app/theme/styles_color.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: demoPlayList.songs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    title: Text(
                      'Song Title: ${demoPlayList.songs[index].songTitle}',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Container(
                      height: 60,
                      width: 60,
                      child: ClipOval(
                        clipper: CircleClipper(),
                        child: Image.asset(
                          demoPlayList.songs[index].albumArtUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      'Artist: ${demoPlayList.songs[index].artist}',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    trailing: Icon(
                      Icons.play_circle_fill_outlined,
                      color: darkAccentColor,
                      size: 30,
                    ),
                    onTap: () => _.toPlay(index),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
