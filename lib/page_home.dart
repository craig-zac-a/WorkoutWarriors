import 'package:flutter/material.dart';
import 'page_splashscreen.dart';
import 'page_home.dart';
import 'page_profile.dart';
import 'page_settings.dart';
import 'modal_bestiary.dart';

class HomePage extends StatelessWidget {
  final String userName;
  final int mainLevel;
  // Agility values
  final int agilityLevel;
  final int agilityTotalXp;
  final int agilityNextThreshold;
  final int agilityPrevThreshold;
  // Strength values
  final int strengthLevel;
  final int strengthTotalXp;
  final int strengthNextThreshold;
  final int strengthPrevThreshold;
  // Endurance values
  final int enduranceLevel;
  final int enduranceTotalXp;
  final int enduranceNextThreshold;
  final int endurancePrevThreshold;

  const HomePage({
    Key? key,
    required this.userName,
    required this.mainLevel,
    required this.agilityLevel,
    required this.agilityTotalXp,
    required this.agilityNextThreshold,
    required this.agilityPrevThreshold,
    required this.strengthLevel,
    required this.strengthTotalXp,
    required this.strengthNextThreshold,
    required this.strengthPrevThreshold,
    required this.enduranceLevel,
    required this.enduranceTotalXp,
    required this.enduranceNextThreshold,
    required this.endurancePrevThreshold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // You can add an AppBar if desired.
        body: Column(
            children: [
              // Top fixed section: Profile/Settings and Friends/Leaderboards
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Image.asset(
                            'assets/icons/profile.png',
                            width: 75,
                            height: 75,
                          ),
                          tooltip: 'Profile',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Profile()),
                            );
                          },
                      ),
                      IconButton(
                          icon: Image.asset(
                            'assets/icons/settings.png',
                            width: 75,
                            height: 75,
                          ),
                          tooltip: 'Settings',
                          onPressed: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Settings()),
                            );
                          },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Image.asset(
                            'assets/icons/social.png',
                            width: 75,
                            height: 75,
                          ),
                          tooltip: 'Social',
                          onPressed: () {
                            
                          },
                      ),
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          icon: Image.asset(
                            'assets/icons/leaderboard.png',
                            width: 75,
                            height: 75,
                          ),
                          tooltip: 'Leaderboard',
                          onPressed: () {
                            
                          },
                      ),
                    ],
                  ),
                ],
              ),
      
              // Middle flexible section: Avatar fills remaining space.
              Expanded(
                child: Center(
                  child: Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Avatar\n(Your Buff Dude)",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
      
              // Bottom fixed section: Main Level, XP Bars, and action buttons.
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Dailies'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Training'),
                      ),
                    ],
                  ),
                  Text(
                    'Main Level: $mainLevel',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 200, vertical: 8.0),
                    child: Column(
                      children: [
                        _buildXpRow(
                          label: 'Agility',
                          level: agilityLevel,
                          totalXp: agilityTotalXp,
                          prevThreshold: agilityPrevThreshold,
                          nextThreshold: agilityNextThreshold,
                        ),
                        const SizedBox(height: 4),
                        _buildXpRow(
                          label: 'Strength',
                          level: strengthLevel,
                          totalXp: strengthTotalXp,
                          prevThreshold: strengthPrevThreshold,
                          nextThreshold: strengthNextThreshold,
                        ),
                        const SizedBox(height: 4),
                        _buildXpRow(
                          label: 'Endurance',
                          level: enduranceLevel,
                          totalXp: enduranceTotalXp,
                          prevThreshold: endurancePrevThreshold,
                          nextThreshold: enduranceNextThreshold,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Image.asset(
                            'assets/icons/bestiary.png',
                            width: 75,
                            height: 75,
                          ),
                          tooltip: 'Bestiary',
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context)
                              {
                                final screenWidth = MediaQuery.of(context).size.width;
                                final screenHeight = MediaQuery.of(context).size.height;
                                return Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/spotlight.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    padding: const EdgeInsets.all(16.0),
                                    width: screenWidth * 0.6,
                                    height: screenHeight * 0.6,
                                    child: const Bestiary(),
                                  ),
                                );
                              },
                            );
                          },
                      ),
                      IconButton(
                          icon: Image.asset(
                            'assets/icons/howto.png',
                            width: 75,
                            height: 75,
                          ),
                          tooltip: 'How-To',
                          onPressed: () {
                            
                          },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
      );
  }

  /// Builds an XP row showing progress between previous and next thresholds.
  Widget _buildXpRow({
    required String label,
    required int level,
    required int totalXp,
    required int prevThreshold,
    required int nextThreshold,
  }) {
    // Calculate progress as a fraction between the thresholds.
    double progress = (totalXp - prevThreshold) / (nextThreshold - prevThreshold);
    progress = progress.clamp(0.0, 1.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label (Level $level)'),
        const SizedBox(height: 4),
        Row(
          children: [
            Text('$totalXp XP'),
            const SizedBox(width: 8),
            Expanded(
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Color(0xff127078),
                color: Color(0xffe44e3e),
                minHeight: 8,
              ),
            ),
            const SizedBox(width: 8),
            Text('${(progress * 100).toStringAsFixed(0)}%'),
          ],
        ),
      ],
    );
  }
}
