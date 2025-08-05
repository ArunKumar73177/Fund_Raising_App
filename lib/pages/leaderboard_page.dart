
import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboard = [
    {"name": "Alice", "donations": 8000},
    {"name": "Bob", "donations": 7000},
    {"name": "Charlie", "donations": 6000},
    {"name": "David", "donations": 5500},
    {"name": "You", "donations": 5000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Leaderboard")),
      body: ListView.builder(
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          final entry = leaderboard[index];
          return ListTile(
            leading: CircleAvatar(child: Text("${index + 1}")),
            title: Text(entry["name"]),
            trailing: Text("₹${entry["donations"]}"),
          );
        },
      ),
    );
  }
}
