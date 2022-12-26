import 'dart:ui';

import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.down,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Text(
                        "Top 2022",
                        style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Spacer(),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Lottie.network(
                            "https://assets4.lottiefiles.com/private_files/lf30_tvnnnk4i.json"),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(88, 158, 158, 158),
                                      blurRadius: 6,
                                      offset: Offset(2, 3),
                                      spreadRadius: 0),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(36),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(36),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                            Text(
                              "Song Title",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Artist",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.firaSans(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(88, 158, 158, 158),
                                      blurRadius: 6,
                                      offset: Offset(2, 3),
                                      spreadRadius: 0),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(36),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(36),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                            Text(
                              "Song Title",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Artist",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.firaSans(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(88, 158, 158, 158),
                                      blurRadius: 6,
                                      offset: Offset(2, 3),
                                      spreadRadius: 0),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(36),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(36),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                            Text(
                              "Song Title",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Artist",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.firaSans(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Recommendation",
                    style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    textAlign: TextAlign.start,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: diaplay.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    width: (diaplay.width / 2) - 24,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                88, 158, 158, 158),
                                            blurRadius: 6,
                                            offset: Offset(2, 3),
                                            spreadRadius: 0),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(36),
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(36),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Song Title",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.sourceSansPro(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Artist",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.firaSans(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    width: (diaplay.width / 2) - 24,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                88, 158, 158, 158),
                                            blurRadius: 6,
                                            offset: Offset(2, 3),
                                            spreadRadius: 0),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(36),
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(36),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Song Title",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.sourceSansPro(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Artist",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.firaSans(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    width: (diaplay.width / 2) - 24,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                88, 158, 158, 158),
                                            blurRadius: 6,
                                            offset: Offset(2, 3),
                                            spreadRadius: 0),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(36),
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(36),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Song Title",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.sourceSansPro(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Artist",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.firaSans(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    width: (diaplay.width / 2) - 24,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                88, 158, 158, 158),
                                            blurRadius: 6,
                                            offset: Offset(2, 3),
                                            spreadRadius: 0),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(36),
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(36),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Song Title",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.sourceSansPro(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Artist",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.firaSans(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                    Icon(
                      Icons.skip_previous,
                      size: 32,
                    ),
                    Icon(Icons.play_arrow,size: 32,),
                    Icon(Icons.skip_next,size: 32,),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                width: diaplay.width,
                height: 56,
                color: Colors.blue[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.home),
                    Icon(Icons.home),
                    Icon(Icons.home),
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
