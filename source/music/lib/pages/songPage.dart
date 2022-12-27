
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music/constrans/songQueue.dart';
import 'package:music/constrans/urls.dart';
import 'package:music/constrans/utils.dart';
import 'package:music/pages/Home.dart';

class MusicPlayPage extends StatefulWidget {
  const MusicPlayPage({super.key});

  @override
  State<MusicPlayPage> createState() => MusicPlayPageState();
}

class MusicPlayPageState extends State<MusicPlayPage> {
  bool isLiked = false;
  // String currentMusic =
  //     "https://cdns-preview-9.dzcdn.net/stream/c-9b7dcf93ae2e2c32ce13647f7b2f006a-5.mp3";

  // void getAudio(String url) async {
  //   int result = await audioPlayer.pause();
  //   if (result == 1) {
  //     setState(() {
  //       setState(() {
  //         playing = false;
  //       });
  //     });
  //   } else {
  //     var res = await audioPlayer.play(url, isLocal: true);
  //     if (res == 1) {
  //       setState(() {
  //         playing = true;
  //       });
  //     }
  //   }
  // }

  @override
  void initState() {
    // TODO: implement initState
    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        audioDuration = dd;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        audioPosition = dd;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Material(
      color: Colors.blueAccent,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushAndRemoveUntil(
                    //     PageRouteBuilder(
                    //       pageBuilder:
                    //           (context, animation, secondaryAnimation) =>
                    //               const HomePage(),
                    //       transitionsBuilder:
                    //           (context, animation, secondaryAnimation, child) {
                    //         const begin = Offset(0.0, 1.0);
                    //         const end = Offset.zero;
                    //         final tween = Tween(begin: begin, end: end);
                    //         final offsetAnimation = animation.drive(tween);
                    //         return child;
                    //       },
                    //     ),
                    //     (route) => false);
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "Now Playing",
                  style: GoogleFonts.kanit(
                    fontSize: 28,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border_outlined,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: display.width,
              height: display.width * (96 / 100),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: display.width * (72 / 100),
                      height: display.width * (72 / 100),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        border: Border.all(color: Colors.white, width: 4),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(176, 255, 255, 255),
                            blurRadius: 100,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                      currentQueue[currentMusic].albumImage)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bookmark_outline,
                    color: Colors.white,
                    size: 24,
                  ),
                  Spacer(),
                  Text(
                    currentQueue[currentMusic].musicName.length > 30
                        ? currentQueue[currentMusic].musicName.substring(0, 30)+'...'
                        : currentQueue[currentMusic].musicName,
                    style: GoogleFonts.oxygen(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 24,
                  ),
                ],
              ),
            ),
            // Spacer(),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 300,
              child: slider(),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 32,
                  child: Lottie.network(
                      'https://assets8.lottiefiles.com/packages/lf20_y7o14dkj.json',
                      fit: BoxFit.fitWidth,
                      repeat: playing),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () async {
                    if (currentMusic != 00) {
                      currentMusic--;
                      await audioPlayer
                          .play(currentQueue[currentMusic].musicUrl);
                      setState(() {
                        playing = true;
                      });
                    }
                  },
                  child: Icon(
                    Icons.skip_previous_rounded,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () async {
                    if (playing) {
                      await audioPlayer.pause();
                      setState(() {
                        playing = false;
                      });
                      // return;
                    } else {
                      await audioPlayer
                          .play(currentQueue[currentMusic].musicUrl);
                      setState(() {
                        playing = true;
                      });
                    }
                    //  getAudio("https://cdns-preview-9.dzcdn.net/stream/c-9b7dcf93ae2e2c32ce13647f7b2f006a-5.mp3");
                    // if(playing)
                    // setState(() {
                    //   playing = !playing;
                    // });
                  },
                  child: Icon(
                    !playing ? Icons.play_circle : Icons.pause_circle,
                    color: Colors.white,
                    size: 72,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () async {
                    if (currentMusic != currentQueue.length - 1) {
                      currentMusic++;
                      await audioPlayer
                          .play(currentQueue[currentMusic].musicUrl);
                      setState(() {
                        playing = true;
                      });
                    }
                  },
                  child: Icon(
                    Icons.skip_next_rounded,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    if (repeat == 0) {
                      setState(() {
                        repeat++;
                      });
                      return;
                    }
                    if (repeat == 1) {
                      setState(() {
                        repeat++;
                      });
                      return;
                    }
                    if (repeat == 2) {
                      setState(() {
                        repeat = 0;
                      });
                      return;
                    }
                  },
                  child: Icon(
                    repeat == 2 ? Icons.repeat_one : Icons.repeat,
                    size: 32,
                    color: repeat != 1 ? Colors.white : Colors.blue[200],
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget slider() {
    return Slider.adaptive(
      thumbColor: Colors.white,
      activeColor: Color.fromARGB(255, 128, 198, 255),
      inactiveColor: Colors.white,
      min: 0.0,
      onChangeEnd: (value) {
        setState(() {
          playing = false;
        });
      },
      value: audioPosition.inSeconds.toDouble(),
      max: audioDuration.inSeconds.toDouble(),
      onChanged: (value) {
        setState(() {
          audioPlayer.seek(new Duration(seconds: value.toInt()));
        });
      },
    );
  }
}
