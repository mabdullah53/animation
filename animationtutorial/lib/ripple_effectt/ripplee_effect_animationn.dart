import 'package:flutter/material.dart';

class RippleeEffectAnimationn extends StatefulWidget {
  const RippleeEffectAnimationn({super.key});

  @override
  State<RippleeEffectAnimationn> createState() => _RippleeEffectAnimationnState();
}

class _RippleeEffectAnimationnState extends State<RippleeEffectAnimationn> with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  var listRadius = [
    150.0,
    200.0,
    250.0,
    300.0,
    350.0,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0,end: 1.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue,end: Colors.orange).animate(animationController);
    animationController.addListener((){
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();
  }

//animation controller use 2nd method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ripple effect animation'),
      ),
      body: Center(
        child: Stack(
          children: listRadius.map((radius) => Container(
            height: radius*animation.value,
            width: radius*animation.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity((1.0 -animation.value).clamp(0.0, 1.0))
            ),
          )).toList(),
        ),
      ),
    );
  }
}
