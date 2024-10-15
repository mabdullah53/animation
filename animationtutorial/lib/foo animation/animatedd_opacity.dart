import 'package:flutter/material.dart';

class AnimateddOpacity extends StatefulWidget {
  const AnimateddOpacity({super.key});

  @override
  State<AnimateddOpacity> createState() => _AnimateddOpacityState();
}

class _AnimateddOpacityState extends State<AnimateddOpacity> {

  var myOpacity = 1.0;
  bool isVisible = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(seconds: 2),
            curve: Curves.slowMiddle,
            child: Center(
              child: Container(
                height: 100,
                width: 200,
                color: Colors.blue,
              ),
            ),
          ),

          //ye if else liga kr hum toggling krwa rahy hn
          ElevatedButton(
              onPressed: (){
                setState(() {
                  myOpacity =0.0;
                  if(isVisible){
                    myOpacity = 0.0; //invisible
                 isVisible = false;
                  } else {
                    myOpacity = 1.0;  //visible
                    isVisible = true;
                  }

                });
              },
              child: Text('button'),
          )

        ],
      ),
    );
  }
}
