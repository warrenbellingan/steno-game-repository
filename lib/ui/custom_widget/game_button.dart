import 'package:Steno_Game/ui/common/ui_helpers.dart';
import 'package:Steno_Game/ui/constants/game_color.dart';
import 'package:flutter/material.dart';

typedef OnClick = Function();

class GameButton extends StatelessWidget {
  const GameButton({super.key, required this.text, required this.onClick});

  final String text;
  final OnClick onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: GameColor.primaryGradient,
          boxShadow: [
            primaryShadow(),
          ]),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        child: Text(
          text,
          style: const TextStyle(
            letterSpacing: 1.5,
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
