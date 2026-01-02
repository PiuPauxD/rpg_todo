import 'package:flutter/material.dart';

class LevelBar extends StatelessWidget {
  final int level;
  final int xp;

  const LevelBar({super.key, required this.level, required this.xp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinearProgressIndicator(
            value: (xp % 100) / 100,
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              'Level $level',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
