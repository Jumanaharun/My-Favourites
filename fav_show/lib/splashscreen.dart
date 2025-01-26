import 'dart:async';

import 'package:fav_show/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//s6
  startTimer() async {
    Timer(Duration(seconds: 5), () {
      // s7) this job is done after 5 seconds
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

//s8 to call startTimer func
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // no appbar in splashscreen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/anime_logo.png",
              width: 200,
              height: 200,
            ),
            Text(
              "Welcome to my app",
              style: GoogleFonts.acme(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

/*s1) stateful widget since the screen will not remain the same as the
screen will change after sometimes*/

//s2) The page contains an image, a text and finally an indicator
//all arranged vertically, right at the centre of the page

//s3) create 'assets' folder and a directory, 'images', in it to store all the photos
//s4) In pubspec.yaml edit assets
//s5) Use 'Image.assets()' to assign the image
//s5) Get google fonts from pub.dev

//s6) The spalshscreen should only last for few seconds, to do it,
//create a function, which is followed by 'async'; async is used whenever
//a function takes time to load data

//s7)

//s8) 'init' is the function which is called the instant the page is loaded;
//i.e before any other fuctions in the page is executed, 'init' is the first function
//that gets called
