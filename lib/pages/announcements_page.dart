
import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  final List<String> announcements = [
    "🎉 New reward unlocked at ₹10,000 donations!",
    "📢 Leaderboard will reset next month.",
    "🚀 Keep up the great work, interns!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Announcements")),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.announcement, color: Colors.blue),
            title: Text(announcements[index]),
          );
        },
      ),
    );
  }
}
