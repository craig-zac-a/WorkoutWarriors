import 'package:flutter/material.dart';

class Bestiary extends StatefulWidget {
  const Bestiary({Key? key}) : super(key: key);

  @override
  _BestiaryState createState() => _BestiaryState();
}

class _BestiaryState extends State<Bestiary> {
  // Track the current boss index.
  int currentBossIndex = 0;

  // Dummy data for bosses. In a real app, this might be a list of boss objects.
  final List<Map<String, String>> bosses = [
    {'name': 'Pack-a-Punch', 'title': 'Basic Baddie', 'image': 'assets/boss_artifacts/boss1_revealed.png'},
    {'name': 'Leg Day', 'title': 'Basic Baddie', 'image': 'assets/boss_artifacts/boss2_hidden.png'},
    
  ];

  // Move to the previous boss.
  void _goBackward() {
    setState(() {
      currentBossIndex = (currentBossIndex - 1 + bosses.length) % bosses.length;
    });
  }

  // Move to the next boss.
  void _goForward() {
    setState(() {
      currentBossIndex = (currentBossIndex + 1) % bosses.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentBoss = bosses[currentBossIndex];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Display the current boss details.
        DisplayBoss(
          bossName: currentBoss['name']!,
          imageAsset: currentBoss['image']!,
        ),
        const SizedBox(height: 20),
        // Navigation row with backward and forward arrow buttons.
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/icons/go_backward.png',
                width: 75,
                height: 75,
              ),
              onPressed: _goBackward,
            ),
            Column(
              children: [
                Text(currentBoss['title']!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(currentBoss['name']!,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Image.asset(
                'assets/icons/go_forward.png',
                width: 75,
                height: 75,
              ),
              onPressed: _goForward,
            ),
          ],
        ),
      ],
    );
  }
}

class DisplayBoss extends StatelessWidget {
  final String bossName;
  final String imageAsset;

  const DisplayBoss({
    Key? key,
    required this.bossName,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .27),
        Image.asset(
          imageAsset,
          width: 200,
          height: 200,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .03),
      ],
    );
  }
}
