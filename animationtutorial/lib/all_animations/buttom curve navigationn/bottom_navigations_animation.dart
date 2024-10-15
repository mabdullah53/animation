import 'package:animationtutorial/all_animations/buttom%20curve%20navigationn/favourite_screen.dart';
import 'package:animationtutorial/all_animations/buttom%20curve%20navigationn/home_screen.dart';
import 'package:animationtutorial/all_animations/buttom%20curve%20navigationn/person_screen.dart';
import 'package:animationtutorial/all_animations/buttom%20curve%20navigationn/search_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationsAnimation extends StatefulWidget {
  const BottomNavigationsAnimation({super.key});

  @override
  State<BottomNavigationsAnimation> createState() => _BottomNavigationsAnimationState();
}

class _BottomNavigationsAnimationState extends State<BottomNavigationsAnimation> {
  int index = 2;

  final screen = const [
    HomeScreen(),
    SearchScreen(),
    FavouriteScreen(),
    PersonScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(Icons.home,size: 30,),
      const Icon(Icons.search,size: 30,),
      const Icon(Icons.favorite,size: 30,),
      const Icon(Icons.person,size: 30,),
    ];
    return Scaffold(
     // backgroundColor: Colors.purpleAccent,
      body: screen[index],

      // Center(
      //   child: Text('$index',style: TextStyle(
      //     fontSize: 110,
      //     fontWeight: FontWeight.bold,
      //     color: Colors.white
      //   ),),
      // ),
      bottomNavigationBar: Theme(
        //change icon color
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(
            color: Colors.white,
          )
        ),
       child: CurvedNavigationBar(


        //navigation bar colors
       // color: Colors.red,
        color: Color.fromARGB(255, 231, 46, 207),
          //selected color
        buttonBackgroundColor: Color.fromARGB(255, 241, 41, 6),
          backgroundColor: Colors.transparent,
          items: items,
          height: 60,
          index: index,
          onTap: (index) => setState(() {
            this.index = index;
          }),

      ),
      )
    );
  }
}
