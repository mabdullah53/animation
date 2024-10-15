import 'package:flutter/material.dart';

class HideeAppbaar extends StatefulWidget {
  const HideeAppbaar({super.key});

  @override
  State<HideeAppbaar> createState() => _HideeAppbaarState();
}

class _HideeAppbaarState extends State<HideeAppbaar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context,innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.blue,
            floating: true,
            snap: true,
            title: Center(child: Text('Hide on scroll show')),
          ),
        ],
        body: ListView.builder(
            itemBuilder: (context,index){
              return ListTile(
                title: Text("Roll:No $index"),
              );
            }),
      ),

    );
  }
}
