import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music/constrans/playList.dart';
import 'package:music/constrans/songQueue.dart';

class SubLiberariesPage extends StatefulWidget {
  const SubLiberariesPage({super.key});

  @override
  State<SubLiberariesPage> createState() => _SubLiberariesPageState();
}

class _SubLiberariesPageState extends State<SubLiberariesPage> {
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Your Liberary",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: Colors.blue,
                size: 24,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.add,
                color: Colors.blue,
                size: 24,
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_upward,
                color: Colors.blue,
                size: 16,
              ),
              Text(
                'Most recent',
                style: GoogleFonts.montserrat(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            height: display.height * (76 / 100),
            width: display.width,
            child: Center(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: display.width > 700 ? 4 : 2,
                  crossAxisSpacing: display.width * (4 / 100),
                  childAspectRatio: 1,
                  mainAxisSpacing: display.width * (4 / 100),
                ),
                itemCount: userPlaylists.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      currentQueue.clear() ;
                      currentQueue.add(userPlaylists[index].songs);
                    },
                    child: LiberaryWidgit(
                      title: userPlaylists[index].title,
                      banner: userPlaylists[index].bannerImage.toString(),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LiberaryWidgit extends StatefulWidget {
  String title;
  String banner;
  LiberaryWidgit({super.key, required this.title, required this.banner});

  @override
  State<LiberaryWidgit> createState() => _LiberaryWidgitState();
}

class _LiberaryWidgitState extends State<LiberaryWidgit> {
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // color: Color.fromARGB(66, 39, 126, 176),
      ),
      child: Stack(
        children: [
          Container(
              height: display.height * (40 / 100),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_40wceiuk.json',
                  ))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // padding: EdgeInsets.only(bottom: display.width),
                  width: display.width > 700
                      ? display.width * (14 / 100)
                      : display.width * (28 / 100),
                  height: display.width > 700
                      ? display.width * (14 / 100)
                      : display.width * (28 / 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                      child: ClipRRect(borderRadius: BorderRadius.circular(12),
                      child: Image.network(widget.banner,fit: BoxFit.fill,),),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.title,
                  style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
