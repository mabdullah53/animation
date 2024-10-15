import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextAniimation extends StatefulWidget {
  const TextAniimation({super.key});

  @override
  State<TextAniimation> createState() => _TextAniimationState();
}

const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);

class _TextAniimationState extends State<TextAniimation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
                'Text Animation'
            )
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 174, 241, 86),
            ),
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.pink
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    //more learn pub.dev
                    // RotateAnimatedText('AWESOME'),
                    // RotateAnimatedText('OPTIMISTIC'),
                    // RotateAnimatedText('DIFFERENT'),

                    // RotateAnimatedText('AWESOME'),
                    // RotateAnimatedText('OPTIMISTIC'),
                    // RotateAnimatedText('DIFFERENT'),

                    // WavyAnimatedText('Hello World'),
                    // WavyAnimatedText('Look at the waves'),

                    ColorizeAnimatedText(
                      'Larry Page',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Abc',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Steve Jobs',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
