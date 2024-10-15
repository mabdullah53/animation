import 'dart:async';

import 'package:animationtutorial/transitions/scalee_transition/secound_screen.dart';
import 'package:flutter/material.dart';

class ScaleeTransition extends StatefulWidget {
  const ScaleeTransition({super.key});

  @override
  State<ScaleeTransition> createState() => _ScaleeTransitionState();
}

class _ScaleeTransitionState extends State<ScaleeTransition> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 800));
    controller.addListener((){
      if(controller.isCompleted){
        Navigator.of(context).push(
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation){
              return SecoundScreen();
            },
              //for animationduring back from secound screen

              transitionsBuilder: (context, animation, secondaryAnimation,child){
                  return FadeTransition(opacity: animation,child: child,);
              }

            ));
        Timer(Duration(microseconds: 400),(){
          controller.reset();
        });
      }
    });
    scaleAnimation = Tween<double> (begin: 1,end: 12).animate(controller);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
                'Scale Transition'
            ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: (){
                controller.forward();
              },
              child: ScaleTransition(
                scale: scaleAnimation,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purpleAccent
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
