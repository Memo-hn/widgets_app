import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

      static const String name = 'progress';

   
  const ProgressScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress'),),

      body: const Center(
         child: Text('Progress'),
      ),
    );
  }
}