import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text('Magic 8 Ball')),
      ),
      body: magicball(),
    ),
  ));
}

class magicball extends StatefulWidget {
  const magicball({Key? key}) : super(key: key);

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int ballimg = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            ballimg = Random().nextInt(5)+1;
          });
        },
        child: Image(
          image: AssetImage('images/ball$ballimg.png'),
        ),
      ),
    );
  }
}

