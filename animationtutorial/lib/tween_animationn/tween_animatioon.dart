import 'package:flutter/material.dart';

class TweenAnimatioon extends StatefulWidget {
  const TweenAnimatioon({super.key});

  @override
  State<TweenAnimatioon> createState() => _TweenAnimatioonState();
}

class _TweenAnimatioonState extends State<TweenAnimatioon> with SingleTickerProviderStateMixin {

  late Animation animation;
 late AnimationController animationController;
 late Animation colorAnimation;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0,end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue,end: Colors.orange).animate(animationController);
    animationController.addListener((){
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('tween animation'),
        ),
      ),
      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          decoration: BoxDecoration(
            color: colorAnimation.value,
            borderRadius: BorderRadius.circular(23),
          ),
        ),
      ),
    );
  }
}
