import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SubSearchPage extends StatefulWidget {
  const SubSearchPage({super.key});

  @override
  State<SubSearchPage> createState() => _SubSearchPageState();
}

class _SubSearchPageState extends State<SubSearchPage> {
  TextEditingController searchText = TextEditingController();
  bool isSearched = false;
  List searchedResult = [
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
    SontTile(),
  ];

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "Hello User,",
            style: GoogleFonts.montserrat(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Text(
            "What you want to hear today ?",
            style: GoogleFonts.sourceSansPro(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(73, 158, 158, 158),
                  borderRadius: BorderRadius.circular(55),
                ),
                width: display.width * (78 / 100),
                child: TextFormField(
                  controller: searchText,
                  decoration: const InputDecoration(
                    hintText: "Try 'Night Changes'",
                    // prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(top: 16, bottom: 16, left: 24),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSearched = true;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(56),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          ((searchedResult.isEmpty) && (isSearched == false))
              ? Column(
                  children: const [
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                        child: Text(
                      "Search any song",
                      textAlign: TextAlign.center,
                    )),
                  ],
                )
              : ((searchedResult.isEmpty) && (isSearched == true))
                  ? Column(
                      children: const [
                        SizedBox(
                          height: 24,
                        ),
                        Center(child: Text("No Song Found")),
                      ],
                    )
                  : Container(
                      padding: EdgeInsets.only(top: 4),
                      height: display.height * (64 / 100),
                      child: ListView.builder(
                        itemCount: searchedResult.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: searchedResult[index],
                          );
                        },
                      ),
                    ),
        ],
      ),
    );
  }
}

class SontTile extends StatefulWidget {
  const SontTile({super.key});

  @override
  State<SontTile> createState() => _SontTileState();
}

class _SontTileState extends State<SontTile> {
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(66, 39, 126, 176),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 124,
      width: display.width,
      child: Stack(
        children: [
          Container(
            height: 124,
            width: display.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_2dmsafyi.json',
                fit: BoxFit.fill),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 8),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Night Changes',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "One Direction",
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(199, 255, 255, 255),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          "00:32" + "/",
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(185, 255, 255, 255),
                          ),
                        ),
                        Text(
                          "2:16",
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Stack(children: [
                      Lottie.network(
                          'https://assets6.lottiefiles.com/packages/lf20_5gdcuanx.json'),
                      Center(
                          child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 28,
                      )),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
