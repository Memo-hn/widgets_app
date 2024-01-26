import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {

  static const String name = 'animated_screen';
   
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

    double height = 50;
  double width = 50;
  Color color = Colors.indigo;
  double  borderRadius = 10;

  void changeShape( ) {

    final random = Random();
     
    height = random.nextInt(300).toDouble() + 120;
    width = random.nextInt(300).toDouble() + 120;
    borderRadius = random.nextInt(100).toDouble() + 20;
    color = Color.fromRGBO(
      random.nextInt(255) + 10,
      random.nextInt(255) + 10,
      random.nextInt(255) + 10,
      1
    );
    
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container'),),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration( milliseconds: 400),
          curve: Curves.easeInOutCubic,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius),
          ), 
         ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon( Icons.play_arrow_rounded),
      ),

    );
  }
}