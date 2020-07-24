import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.lightBlue,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int whichBall = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            whichBall = Random().nextInt(5) + 1;
          });
          print('I am Clicked');
        },
        child: Image.asset('images/ball$whichBall.png'),
      ),
    );
  }
}
