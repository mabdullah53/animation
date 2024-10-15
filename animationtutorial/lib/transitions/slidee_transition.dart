import 'package:flutter/material.dart';

class SlideeTransition extends StatefulWidget {
  const SlideeTransition({super.key});

  @override
  State<SlideeTransition> createState() => _SlideeTransitionState();
}

class _SlideeTransitionState extends State<SlideeTransition> with SingleTickerProviderStateMixin {

late final AnimationController _controller = AnimationController(
  duration: Duration(seconds: 2),
    vsync: this,
)..repeat(reverse: true);
late final Animation<Offset> _offsetAnimation = Tween<Offset>(
  begin: Offset.zero, end: Offset(0,1.5),
).animate(
 CurvedAnimation(
     parent: _controller,
     curve: Curves.elasticIn),
);

@override
  void dispose() {
  _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
                'Slide Transition'
            ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SlideTransition(
              position: _offsetAnimation,
            child: Center(
              child: Image(image: NetworkImage('https://images.pexels.com/photos/7367608/pexels-photo-7367608.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
                height: 100,
                width: 80,
                ),
            ),
          )
        ],
      ),
    );
  }
}
