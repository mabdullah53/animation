import 'package:flutter/material.dart';

class ThreeDList extends StatefulWidget {
  const ThreeDList({super.key});

  @override
  State<ThreeDList> createState() => _ThreeDListState();
}

class _ThreeDListState extends State<ThreeDList> {

  var arrIndex = [
    1,2,3,4,5,6,7,8,9,10,11,12
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('three D')),
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
        children:
          arrIndex.map((value) {
            return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12)
            ));
            }).toList(),
      ),
    );
  }
}
