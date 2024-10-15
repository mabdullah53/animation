import 'package:flutter/material.dart';

class SecoundScreen extends StatefulWidget {
  const SecoundScreen({super.key});

  @override
  State<SecoundScreen> createState() => _SecoundScreenState();
}

class _SecoundScreenState extends State<SecoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('secound screen')),
      ),
      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
