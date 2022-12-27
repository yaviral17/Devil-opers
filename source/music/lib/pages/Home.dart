import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music/constrans/songQueue.dart';
import 'package:music/constrans/utils.dart';
import 'package:music/pages/songPage.dart';
import 'package:music/pages/subHomePages/Liberaries.dart';
import 'package:music/pages/subHomePages/home.dart';
import 'package:music/pages/subHomePages/menu.dart';
import 'package:music/pages/subHomePages/search.dart';
import 'package:music/providers/fetchSearchedSongList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedNavIcon = 1;

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
    var diaplay = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: diaplay.width,
              height: diaplay.height,
              child: Lottie.network(
                  "https://assets6.lottiefiles.com/packages/lf20_xsxuytsf.json",
                  fit: BoxFit.fill),
            ),
            //Sub Pages Here - Start

            selectedNavIcon == 1
                ? SubHomeScreen()
                : selectedNavIcon == 2
                    ? SubSearchPage()
                    : SubLiberariesPage(),

            //Sub Pages Here - End
            Column(
              children: [
                Spacer(),
                Container(
                  width: diaplay.width,
                  height: 60,
                  color: Colors.blue[100],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const MusicPlayPage(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(0.0, 1.0);
                                  const end = Offset.zero;
                                  final tween = Tween(begin: begin, end: end);
                                  final offsetAnimation =
                                      animation.drive(tween);
                                  return child;
                                },
                              ),
                            );
                          },
                          child: Icon(
                            Icons.keyboard_arrow_up_sharp,
                            color: Color.fromARGB(212, 0, 0, 0),
                            size: 36,
                          )),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 4)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                              currentQueue[currentMusic].albumImage),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currentQueue[currentMusic].musicName.length > 20
                                ? currentQueue[currentMusic]
                                        .musicName
                                        .toString()
                                        .substring(0, 20) +
                                    "..."
                                : currentQueue[currentMusic].musicName,
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            currentQueue[currentMusic].artishName,
                            style: GoogleFonts.firaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () async {
                          // if (currentMusic == 0) {
                          //   showSnackBar(
                          //       "No previous song avilable in queue!", context);
                          //   return;
                          // }
                          // currentMusic--;
                          // if (await audioDuration.inSeconds > 0) {
                          //   await audioPlayer.resume();
                          // } else {
                          //   await audioPlayer.play(currentQueue[currentMusic]);
                          // }
                          // setState(() {
                          //   playing = true;
                          // });
                          if (currentMusic != 0) {
                            currentMusic--;
                            await audioPlayer
                                .play(currentQueue[currentMusic].musicUrl);

                            setState(() {
                              playing = true;
                            });
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.skip_previous,
                            size: 32,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          // var request = await GetSearchResults("night%20changes");
                          // print(request);
                          if (!playing) {
                            await audioPlayer
                                .play(currentQueue[currentMusic].musicUrl);
                            setState(() {
                              playing = true;
                            });
                          } else {
                            await audioPlayer.pause();
                            setState(() {
                              playing = false;
                            });
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            playing ? Icons.pause : Icons.play_arrow,
                            size: 32,
                          ),
                        ),
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
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.skip_next,
                            size: 32,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  width: diaplay.width,
                  height: 56,
                  color: Colors.blue[300],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedNavIcon = 1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.home,
                            size: selectedNavIcon == 1 ? 32 : 24,
                            color: Colors.white,
                            shadows: selectedNavIcon == 1
                                ? [Shadow(color: Colors.white, blurRadius: 6)]
                                : [],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedNavIcon = 2;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.search,
                            size: selectedNavIcon == 2 ? 32 : 24,
                            color: Colors.white,
                            shadows: selectedNavIcon == 2
                                ? [Shadow(color: Colors.white, blurRadius: 6)]
                                : [],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedNavIcon = 3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.favorite,
                            size: selectedNavIcon == 3 ? 32 : 24,
                            color: Colors.white,
                            shadows: selectedNavIcon == 3
                                ? [Shadow(color: Colors.white, blurRadius: 6)]
                                : [],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
