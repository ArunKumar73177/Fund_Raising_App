// lib/widgets/reward_card.dart
import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const RewardCard({
    super.key,
    required this.title,
    this.icon = Icons.star,
    this.color = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
