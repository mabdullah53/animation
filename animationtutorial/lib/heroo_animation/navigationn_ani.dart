import 'package:flutter/material.dart';

import 'detail_navigationn.dart';

class NavigationnAni extends StatefulWidget {
  const NavigationnAni({super.key});

  @override
  State<NavigationnAni> createState() => _NavigationnAniState();
}

class _NavigationnAniState extends State<NavigationnAni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 140,
          width: 140,
          child: Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailNavigationn()));
              },
              child: Hero(
                tag: 'background',
                child: Image.network('https://images.pexels.com/photos/24343237/pexels-photo-24343237/free-photo-of-close-up-of-green-monstera-leaves.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
