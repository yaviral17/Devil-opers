import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music/constrans/music_model.dart';
import 'package:music/constrans/songQueue.dart';
import 'package:music/constrans/urls.dart';
import 'package:music/constrans/utils.dart';
import 'package:music/providers/fetchSearchedSongList.dart';

class SubSearchPage extends StatefulWidget {
  const SubSearchPage({super.key});

  @override
  State<SubSearchPage> createState() => _SubSearchPageState();
}

class _SubSearchPageState extends State<SubSearchPage> {
  TextEditingController searchText = TextEditingController();
  bool isSearched = false;
  List searchedResult = <MusicModel>[
    // MusicModel(
    //   id: 1,
    //   albumImage:
    //       "https://e-cdns-images.dzcdn.net/images/artist/6760dba71ba14145eec5478d8b135c55/500x500-000000-80-0-0.jpg",
    //   artishName: "One Direction",
    //   artistimage:
    //       "https://e-cdns-images.dzcdn.net/images/artist/6760dba71ba14145eec5478d8b135c55/500x500-000000-80-0-0.jpg",
    //   musicName: "Night Changes",
    //   musicUrl:
    //       "https://cdns-preview-9.dzcdn.net/stream/c-9b7dcf93ae2e2c32ce13647f7b2f006a-5.mp3",
    //   albumName: "Night Changes",
    // ),
  ];

  Future getSearchResult(String searchthis) async {
    setState(() {
      isSearched = true;
    });
    print(searchthis);
    // var response = await GetSearchResults(searchthis);
    List response = dummyResponse['data'];
   
    for (var item in response) {
      searchedResult.add(MusicModel(
        id: item['id'],
        albumImage: item['album']['cover_big'],
        albumName: item['album']['title'],
        artistimage: item['artist']['picture_big'],
        artishName: item['artist']['name'],
        musicName: item['title'],
        musicUrl: item['preview'],
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () async {
                  print("button pressed");
                  if (searchText.text.trim().isEmpty) {
                    return;
                  }
                  getSearchResult(
                      searchText.text.trim().replaceAll(' ', '%20'));
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
                      height: display.height * (74 / 100),
                      child: ListView.builder(
                        itemCount: searchedResult.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: SontTile(
                              id: searchedResult[index].id,
                              albumImage: searchedResult[index].albumImage,
                              albumName: searchedResult[index].albumName,
                              artistImage: searchedResult[index].artistimage,
                              artistName: searchedResult[index].artishName,
                              duration: "00:34",
                              songName: searchedResult[index].musicName,
                              index: index,
                              model: searchedResult[index],
                            ),
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
  String songName;
  String artistName;
  String albumName;
  String albumImage;
  String artistImage;
  String duration;
  int? index;
  int id;
    MusicModel? model;
  SontTile({
    super.key,
    required this.id,
    required this.songName,
    required this.albumName,
    required this.artistName,
    required this.albumImage,
    required this.artistImage,
    required this.duration,
    this.index,
    this.model
  });

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
                    border: Border.all(color: Colors.white, width: 4),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(218, 105, 255, 193),
                        blurRadius: 4,
                        offset: Offset(2, 3),
                      ),
                    ],
                    color: Colors.blue,
                  ),
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        widget.albumImage,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.songName.length > 20? widget.songName.substring(0,20) + "..." : widget.songName,
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
                      widget.artistName,
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
                          widget.duration,
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(185, 255, 255, 255),
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
                  // InkWell(
                  //   onTap: () {
                      
                  //   },
                  //   child: Container(
                  //       padding: EdgeInsets.all(8),
                  //       child: Icon(
                  //         Icons.queue_music,
                  //         color: Colors.white,
                  //       )),
                  // ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      currentQueue.add(widget.model);
                      showSnackBar('Song added to queue', context);
                    },
                    child: SizedBox(
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
