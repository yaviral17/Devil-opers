import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:music/constrans/music_model.dart';
import 'package:music/constrans/urls.dart';

class PlaylistModel {
  String title;
  String? disctription = " ";
  String? bannerImage = " ";
  List<MusicModel>? songs = [];
  PlaylistModel({
    required this.title,
    this.disctription,
    this.bannerImage,
    this.songs,
  });
  void addSong(MusicModel temp){
      songs!.add(temp);
  }
}

List<PlaylistModel> userPlaylists = [
  PlaylistModel(title: "lol",bannerImage: dummyResponse['data'][0]['album']['cover_big']),
];
