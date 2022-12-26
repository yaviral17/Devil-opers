import 'dart:ui';

import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music/pages/subHomePages/Liberaries.dart';
import 'package:music/pages/subHomePages/home.dart';
import 'package:music/pages/subHomePages/menu.dart';
import 'package:music/pages/subHomePages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedNavIcon = 1;
  bool isPaused = true;

  @override
  Widget build(BuildContext context) {
    var diaplay = MediaQuery.of(context).size;
    return SafeArea(
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
                  : selectedNavIcon == 3
                      ? SubLiberariesPage()
                      : SubMenuPage(),

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
                      width: 20,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
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
                          'Song Name',
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
                          'Singer',
                          style: GoogleFonts.firaSans(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isPaused = !isPaused;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          isPaused ? Icons.pause : Icons.play_arrow,
                          size: 32,
                        ),
                      ),
                    ),
                    InkWell(
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
                    InkWell(
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
                    InkWell(
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
                    InkWell(
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedNavIcon = 4;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.menu,
                          size: selectedNavIcon == 4 ? 32 : 24,
                          color: Colors.white,
                          shadows: selectedNavIcon == 4
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
    );
  }
}
