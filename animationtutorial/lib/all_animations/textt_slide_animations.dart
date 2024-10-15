import 'package:flutter/material.dart';


class TextSlideeAnimationss extends StatefulWidget {
  const TextSlideeAnimationss({super.key});

  @override
  State<TextSlideeAnimationss> createState() => _TextSlideeAnimationssState();
}

class _TextSlideeAnimationssState extends State<TextSlideeAnimationss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //set image background
          Image.network('https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          fit: BoxFit.cover,
          //  height: MediaQuery.of(context).size.height,
          ),
          // Marquee(text:
          // 'Flutter is an open-source UI software development kit created by Google. It can be used to develop cross platform applications.',
          //   style: TextStyle(fontWeight: FontWeight.bold),
          //   scrollAxis: Axis.horizontal,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   blankSpace: 20.0,
          //   velocity: 100.0,
          //   pauseAfterRound: Duration(seconds: 1),
          //   startPadding: 10.0,
          //   accelerationDuration: Duration(seconds: 1),
          //   accelerationCurve: Curves.linear,
          //   decelerationDuration: Duration(milliseconds: 500),
          //   decelerationCurve: Curves.easeOut,
          //
          // ),
        ],
      ),
    );
  }
}
