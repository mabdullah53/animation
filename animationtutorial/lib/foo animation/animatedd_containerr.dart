import 'package:flutter/material.dart';

class AnimatedScreeen extends StatefulWidget {
  const AnimatedScreeen({super.key});

  @override
  State<AnimatedScreeen> createState() => _AnimatedScreeenState();
}

class _AnimatedScreeenState extends State<AnimatedScreeen> {

  var _height = 100.0;
  var _width = 200.0;
  bool flag = true;

 // Color bgColor = Colors.blueGrey;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(22),
    color: Colors.blueGrey,
    image: DecorationImage(
      image: NetworkImage('https://images.pexels.com/photos/27947532/pexels-photo-27947532/free-photo-of-woman-with-food-on-a-picnic.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      fit: BoxFit.cover,
    )
  );

  var _height2 = 100.0;
  var _width2 = 200.0;
  bool flag2 = true;

  // Color bgColor = Colors.blueGrey;
  Decoration myDecor2 = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Colors.blueGrey,
      image: DecorationImage(
        image: NetworkImage('https://images.pexels.com/photos/27947532/pexels-photo-27947532/free-photo-of-woman-with-food-on-a-picnic.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        fit: BoxFit.cover,
      )
  );

  var _height3 = 100.0;
  var _width3 = 200.0;
  bool flag3 = true;

  // Color bgColor = Colors.blueGrey;
  Decoration myDecor3 = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Colors.blueGrey,
      image: DecorationImage(
        image: NetworkImage('https://images.pexels.com/photos/27947532/pexels-photo-27947532/free-photo-of-woman-with-food-on-a-picnic.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        fit: BoxFit.cover,
      )
  );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Animation')),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Center(
              child: AnimatedContainer(
                height: _height,
                  width: _width,
                  curve: Curves.slowMiddle,
                  duration: Duration(seconds: 2),
                  decoration: myDecor,
        
        
                //  color: bgColor,
        
        
        
              ),
            ),
        
            SizedBox(height: 10,),
        
            Center(
              child: ElevatedButton(
                  onPressed: (){
        
                    setState(() {
                      if(flag){
                        _width = 100.0;
                        _height = 200.0;
                       // bgColor = Colors.red;
                        myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                            color: Colors.orange,
                          image: DecorationImage(
                            image: NetworkImage('https://images.pexels.com/photos/27947532/pexels-photo-27947532/free-photo-of-woman-with-food-on-a-picnic.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            fit: BoxFit.cover,
                          )
        
                        );
                        flag = false;
                      } else {
                        _width = 200.0;
                        _height = 100.0;
                      //  bgColor = Colors.orange;
                        myDecor = BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey,
                            image: DecorationImage(
                              image: NetworkImage('https://images.pexels.com/photos/10476095/pexels-photo-10476095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              fit: BoxFit.cover,
                            )
                        );
                        flag = true;
                      }
        
                    });
                  },
                  child: Text('Animate')
              ),
            ),
        
            SizedBox(height: 50,),
        
            Center(
              child: AnimatedContainer(
                height: _height2,
                width: _width2,
                curve: Curves.easeInBack,
                duration: Duration(seconds: 2),
                decoration: myDecor2,
        
        
                //  color: bgColor,
        
        
        
              ),
            ),
        
            SizedBox(height: 10,),
        
            Center(
              child: ElevatedButton(
        
                  onPressed: (){
        
                    setState(() {
                      if(flag2){
                        _width2 = 250.0;
                        _height2 = 100.0;
                        // bgColor = Colors.red;
                        myDecor2 = BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: NetworkImage('https://images.pexels.com/photos/27947532/pexels-photo-27947532/free-photo-of-woman-with-food-on-a-picnic.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              fit: BoxFit.cover,
                            )
        
                        );
                        flag2 = false;
                      } else {
                        _width2 = 250.0;
                        _height2 = 150.0;
                        //  bgColor = Colors.orange;
                        myDecor2 = BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey,
                            image: DecorationImage(
                              image: NetworkImage('https://images.pexels.com/photos/10476095/pexels-photo-10476095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              fit: BoxFit.cover,
                            )
                        );
                        flag2 = true;
                      }
        
                    });
                  },
                  child: Text('Animate')
              ),
            ),
        
            SizedBox(height: 50,),
        
            Center(
              child: AnimatedContainer(
                height: _height3,
                width: _width3,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(seconds: 2),
                decoration: myDecor3,
        
        
                //  color: bgColor,
        
        
        
              ),
            ),
        
            SizedBox(height: 10,),
        
            Center(
              child: ElevatedButton(
                  onPressed: (){
        
                    setState(() {
                      if(flag3){
                        _width3 = 250.0;
                        _height3 = 100.0;
                        // bgColor = Colors.red;
                        myDecor3 = BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: NetworkImage('https://images.pexels.com/photos/27408719/pexels-photo-27408719/free-photo-of-a-tray-with-fruit-and-berries-on-it.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              fit: BoxFit.cover,
                            )
        
                        );
                        flag3 = false;
                      } else {
                        _width3 = 250.0;
                        _height3 = 150.0;
                        //  bgColor = Colors.orange;
                        myDecor3 = BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey,
                            image: DecorationImage(
                              image: NetworkImage('https://images.pexels.com/photos/10476095/pexels-photo-10476095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              fit: BoxFit.cover,
                            )
                        );
                        flag3 = true;
                      }
        
                    });
                  },
                  child: Text('Animate')
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
