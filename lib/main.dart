import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text(
              'Ask Me Anything',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )),
          backgroundColor: Colors.blueAccent,
        ),
        body: BallPage(),
      ),
    ),
  );
}
class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  int ballNum=1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    ballNum=Random().nextInt(5)+1;
                  });
                },
                  child: Image.asset('images/ball$ballNum.png')
              )
          ),
        ],
      ),
    );
  }
}

