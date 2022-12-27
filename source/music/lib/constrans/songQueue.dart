import 'package:audioplayers/audioplayers.dart';
import 'package:music/constrans/music_model.dart';

List currentQueue = <MusicModel>[
  MusicModel(
    id: 0,
    albumImage:
        "https://e-cdns-images.dzcdn.net/images/artist/6760dba71ba14145eec5478d8b135c55/500x500-000000-80-0-0.jpg",
    artishName: "One Direction",
    artistimage:
        "https://e-cdns-images.dzcdn.net/images/artist/6760dba71ba14145eec5478d8b135c55/500x500-000000-80-0-0.jpg",
    musicName: "Night Changes",
    musicUrl:
        "https://cdns-preview-9.dzcdn.net/stream/c-9b7dcf93ae2e2c32ce13647f7b2f006a-5.mp3",
    albumName: "Night Changes",
  ),
];
int currentMusic = 0;
AudioPlayer audioPlayer = AudioPlayer();
Duration audioDuration = Duration();
Duration audioPosition = Duration();
bool playing = false;
int repeat = 0;

void playNext() async{
  await audioPlayer.play(currentQueue[currentMusic]);
}