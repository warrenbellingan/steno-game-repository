import 'package:flutter/material.dart';

class AchievementCard extends StatelessWidget {
  AchievementCard({
    super.key,
    required this.label,
    required this.isComplete,
  });

  bool isComplete;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
        border:
        Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: isComplete ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Text(
              isComplete ? 'Complete' : 'InComplete',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.bar_chart,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '100%',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.lightBlueAccent,
                Colors.lightBlue,
                Colors.blueAccent,
                Colors.blue
              ]),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 10,
          ),
        ],
      ),
    );
  }
}
