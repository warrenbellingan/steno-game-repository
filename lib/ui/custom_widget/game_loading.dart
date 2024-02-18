import 'package:flutter/material.dart';

class GameLoading extends StatelessWidget {
  const GameLoading({super.key, this.label = "Loading"});

  final String label;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          LinearProgressIndicator(),
          Text(label, style: TextStyle(
            fontSize: 24,
            letterSpacing: 2,
            wordSpacing: 2,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    );
  }
}
