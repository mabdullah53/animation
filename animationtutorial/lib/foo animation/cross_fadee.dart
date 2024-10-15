import 'dart:async';

import 'package:flutter/material.dart';

class CrossFadee extends StatefulWidget {
  const CrossFadee({super.key});

  @override
  State<CrossFadee> createState() => _CrossFadeeState();
}

class _CrossFadeeState extends State<CrossFadee> {
  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 4),(){
  //     reload();
  //   });
  // }

  void reload() {
    setState(() {
      if(isFirst){
        isFirst = false;
      } else {
        isFirst = true;

      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross fade'),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blueGrey
                ),
              ),
              secondChild: Image.network(
                  'https://images.pexels.com/photos/27947532/pexels-photo-27947532/free-photo-of-woman-with-food-on-a-picnic.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              height: 200,
              width: 200,
              ),
              sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.bounceIn,
              secondCurve: Curves.bounceOut,
              crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond
            ),
            ElevatedButton(onPressed: (){
              reload();
              // setState(() {
              //   isFirst = false;
              // });

            },
                child: Text('Animate')
            )
          ],
        ),
      ),
    );
  }
}
