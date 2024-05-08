import 'package:flutter/material.dart';
import 'dart:math';

void main() =>
  runApp(const MaterialApp(
    home: ballpage(),

  ),
  );


  class ballpage extends StatelessWidget {
    const ballpage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
  title: const Text('Ask Me Anything'),
  centerTitle: true,
  backgroundColor: Colors.blue.shade900,
  ),
        body: const ball(),
      );
    }
  }
  class ball extends StatefulWidget {
    const ball({super.key});
  
    @override
    State<ball> createState() => _ballState();
  }
  
  class _ballState extends State<ball> {
    int ballnumber=1;
    void updateImage() {
      setState(() {
        ballnumber = Random().nextInt(4) + 1;
      });
    }
    @override
    Widget build(BuildContext context) {
      return Center(
        child: TextButton(
          onPressed: updateImage,
          child: Image.asset('Assets/ball$ballnumber.png'),
        ),
      );

      }
    }

  


