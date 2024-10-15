import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimateddBuilderr extends StatefulWidget {
  const AnimateddBuilderr({super.key});

  @override
  State<AnimateddBuilderr> createState() => _AnimateddBuilderrState();
}

class _AnimateddBuilderrState extends State<AnimateddBuilderr> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this)
    ..repeat(); // we need repeat again and again

  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Animated builder')),
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
          child: CircleAvatar(
            radius: 150,
            backgroundColor: Colors.blue,
            child: Text('hello flutter',style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold
            ),),
          ),
            builder: (BuildContext context, Widget? child){
              return Transform.rotate(
                angle: _controller.value *2.0*math.pi,child: child,);
            },

        ),
      ),
    );
  }
}
