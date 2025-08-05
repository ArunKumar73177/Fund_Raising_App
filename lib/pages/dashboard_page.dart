import 'package:flutter/material.dart';
import 'leaderboard_page.dart';
import 'announcements_page.dart';
import 'settings_page.dart';
import '../widgets/reward_card.dart';

class DashboardPage extends StatelessWidget {
  final String name;
  final String referralCode;

  const DashboardPage({
    super.key,
    required this.name,
    required this.referralCode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsPage()),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.deepPurple,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Referral Code: $referralCode"),
              ),
            ),
            SizedBox(height: 15),

            // Donations card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.attach_money, size: 40, color: Colors.green),
                    SizedBox(width: 15),
                    Text(
                      "Total Donations: ₹5,000",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),

            // Rewards section
            Text(
              "Rewards",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: const [
                Expanded(child: RewardCard(title: "Bronze Badge")),
                Expanded(child: RewardCard(title: "Silver Badge", color: Colors.grey)),
                Expanded(child: RewardCard(title: "Gold Badge", color: Colors.amber)),
              ],
            ),

            Spacer(),

            // Navigation buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: Icon(Icons.leaderboard),
                  label: Text("Leaderboard"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LeaderboardPage()),
                    );
                  },
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.announcement),
                  label: Text("Announcements"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AnnouncementsPage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
