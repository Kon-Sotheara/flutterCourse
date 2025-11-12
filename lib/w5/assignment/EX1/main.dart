import 'package:flutter/material.dart';
import 'package:project/w5/assignment/EX1/hobbyCard.dart';

void main () {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Hobbies"),
        ),
        body: Container(
          color: Colors.grey,
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                // part 1
                // Container(
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Colors.green,
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Center(
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding: EdgeInsets.only(left: 30, right: 20, top: 40, bottom: 40),
                //           child: Icon( Icons.travel_explore, color: Colors.white,),
                //         ),
                //         Text(
                //           "Travel",
                //           style: TextStyle(fontSize: 25, color: Colors.white),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Colors.blueGrey,
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Center(
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding: EdgeInsets.only(left: 30, right: 20, top: 40, bottom: 40),
                //           child: Icon( Icons.ice_skating, color: Colors.white,),
                //         ),
                //         Text(
                //           "Skating",
                //           style: TextStyle(fontSize: 25, color: Colors.white),
                //         )
                //       ],
                //     ),
                //   ),
                // )

                // part 2
                Hobbycard(tittle: "Travel", iconData: Icons.travel_explore, color: Colors.green,),
                Hobbycard(tittle: "Skating", iconData: Icons.skateboarding, color: Colors.blueGrey),
                Hobbycard(tittle: "Listion To Music", iconData: Icons.music_note),
                Hobbycard(tittle: "Dancing", iconData: Icons.favorite, color: Colors.pink,),
              ],
            )
          ),
        )
      )
    )
  );
}