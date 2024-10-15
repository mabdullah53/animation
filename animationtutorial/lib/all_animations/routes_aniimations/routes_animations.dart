import 'package:animationtutorial/all_animations/routes_aniimations/secound_screeen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutesAnimations extends StatefulWidget {
  const RoutesAnimations({super.key});

  @override
  State<RoutesAnimations> createState() => _RoutesAnimationsState();
}

class _RoutesAnimationsState extends State<RoutesAnimations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Roures Animation')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: (){
                Get.to(SecoundScreeen(),transition: Transition.circularReveal,
                duration: Duration(seconds: 2)
                );
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.teal.shade900,
                  shape: BoxShape.circle
                ),
                child: Center(child: Text('Tab',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),

                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
