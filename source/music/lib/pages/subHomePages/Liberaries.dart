import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class SubLiberariesPage extends StatefulWidget {
  const SubLiberariesPage({super.key});

  @override
  State<SubLiberariesPage> createState() => _SubLiberariesPageState();
}

class _SubLiberariesPageState extends State<SubLiberariesPage> {
  List userPlaylist = [];
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: 16,),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
              ),
              SizedBox(width: 8,),
              Text("Your Liberary",style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),),
              Spacer(),
              Icon(Icons.search,color: Colors.blue,size: 24,),
              SizedBox(width: 8,),
              Icon(Icons.add,color: Colors.blue,size: 24,),
            ],
          ),
          SizedBox(height: 24,),
          Row(
            children: [
              Icon(Icons.arrow_upward,color:Colors.blue,size: 16,),
              Text('Most recent',style: GoogleFonts.montserrat(
                color:Colors.blue,
                fontSize: 16,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
