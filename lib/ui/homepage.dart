import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPageNetflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.red,
      Colors.purple,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.white,
    ];

    var colorizeTextStyle = GoogleFonts.gugi(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 8.0);

    return Scaffold(
      // backgroundColor: Color.fromRGBO(255, 38, 38, 1),
      // backgroundColor: Colors.black,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                  ColorizeAnimatedText(
                    '9 MOVIES',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    '9 EMOTIONS',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ]),
              ),
              Container(
                child: Column(
                  children: [
                    TextLiquidFill(
                      text: 'NAVA',
                      waveColor: Color.fromRGBO(255, 38, 38, 1),
                      //boxBackgroundColor: Color.fromRGBO(255, 38, 38, 1),
                      boxBackgroundColor: Colors.black,
                      textStyle: GoogleFonts.gugi(
                        fontSize: 170,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 8.0,
                      ),
                      boxHeight: 210.0,
                      boxWidth: 700,
                      waveDuration: Duration(seconds: 2),
                      loadDuration: Duration(seconds: 60),

                      // loadDuration: Duration(seconds: 1),
                    ),
                    TextLiquidFill(
                      text: 'RASA',
                      waveColor: Color.fromRGBO(255, 38, 38, 1),
                      //boxBackgroundColor: Color.fromRGBO(255, 38, 38, 1),
                      boxBackgroundColor: Colors.black,
                      textStyle: GoogleFonts.gugi(
                          fontSize: 170,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 8.0),
                      boxHeight: 210.0,
                      boxWidth: 700,
                      waveDuration: Duration(seconds: 2),
                      loadDuration: Duration(seconds: 45),
                      // loadDuration: Duration(seconds: 1),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 7.0,
                        color: Colors.black,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FlickerAnimatedText(
                        'Available on Netflix',
                        textStyle: GoogleFonts.gugi(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 8.0),
                      ),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// DefaultTextStyle(
// style: GoogleFonts.gugi(
// fontSize: 40,
// color: Colors.black,
// fontWeight: FontWeight.bold,
// letterSpacing: 2.0),
// child: AnimatedTextKit(repeatForever: true, animatedTexts: [
// RotateAnimatedText('9 FILMS'),
// RotateAnimatedText('9 EMOTIONS'),
// ]),
// ),
