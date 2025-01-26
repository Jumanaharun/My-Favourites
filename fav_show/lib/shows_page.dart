import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowsPage extends StatefulWidget {
// to bring the details from another page
  final String name, image, descr, rating, genre;
  const ShowsPage(
      {super.key,
      required this.name,
      required this.image,
      required this.descr,
      required this.rating,
      required this.genre});

  @override
  State<ShowsPage> createState() => _ShowsPageState();
}

class _ShowsPageState extends State<ShowsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Details",
          style: GoogleFonts.acme(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/${widget.image}",
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 3,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    widget.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    "Synopsis: " + widget.descr,
                    style: GoogleFonts.acme(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Genre: " + widget.genre,
                style: GoogleFonts.acme(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text("IMDB rating: " + widget.rating,
                style: GoogleFonts.acme(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

//since data will be changing when we click the card; like for each conatiner,
//a different data will be displayed, so using 'stateful' we don't have to
//create separate pages for each container, the same page will dynamically update
//itself for whichever card clicked.
