import 'package:flutter/material.dart';

class SecoundScreeen extends StatefulWidget {
  const SecoundScreeen({super.key});

  @override
  State<SecoundScreeen> createState() => _SecoundScreeenState();
}

class _SecoundScreeenState extends State<SecoundScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade700,
      appBar: AppBar(
        title: Center(child: Text('Secound Screen')),
      ),
    );
  }
}
