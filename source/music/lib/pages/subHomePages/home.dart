import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SubHomeScreen extends StatefulWidget {
  const SubHomeScreen({super.key});

  @override
  State<SubHomeScreen> createState() => _SubHomeScreenState();
}

class _SubHomeScreenState extends State<SubHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.down,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        "Top 2022",
                        style: GoogleFonts.montserrat(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Spacer(),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 2,offset: Offset(2,2)),],
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
                        SizedBox(width: 12,),
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
                                      color: Colors.blue,
                                      blurRadius: 2,
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
                                      color: Colors.blue,
                                      blurRadius: 2,
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
                                      color: Colors.blue,
                                      blurRadius: 2,
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
                         SizedBox(width: 12,),
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
                      width: display.width,
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
                                    width: (display.width / 2) - 24,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.blue,
                                            blurRadius: 2,
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
                                    width: (display.width / 2) - 24,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.blue,
                                            blurRadius: 2,
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
                                    width: (display.width / 2) - 24,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.blue,
                                            blurRadius: 2,
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
                                    width: (display.width / 2) - 24,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.blue,
                                            blurRadius: 2,
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
                   SizedBox(height:  132,),
                ],
              ),
            ),
          )
          ;
  }
}