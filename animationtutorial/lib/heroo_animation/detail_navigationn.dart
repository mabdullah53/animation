import 'package:flutter/material.dart';

class DetailNavigationn extends StatefulWidget {
  const DetailNavigationn({super.key});

  @override
  State<DetailNavigationn> createState() => _DetailNavigationnState();
}

class _DetailNavigationnState extends State<DetailNavigationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail'),
      ),
      body: Center(
        child: Container(
          child: Hero(
            tag: 'background',
            child: Image.network('https://images.pexels.com/photos/24343237/pexels-photo-24343237/free-photo-of-close-up-of-green-monstera-leaves.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
        ),
      ),
    );
  }
}
