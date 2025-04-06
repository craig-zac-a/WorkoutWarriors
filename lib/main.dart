import 'package:flutter/material.dart';
import 'page_splashscreen.dart';
import 'page_home.dart';
import 'page_profile.dart';
import 'page_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Workout Warrior',
        theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xff127078),
            onPrimary: Color(0xff0f1018),
            secondary: Color(0xffe44e3e),
            onSecondary: Color(0xff0f1018),
            surface: Color(0xfffbebb8),
            onSurface: Color(0xff0f1018),
            error: Colors.red,
            onError: Colors.white,
          )

        ),
        home: Stack(
          children: const [
            HomePage(
              userName: 'Zachary',
              // For demonstration, the main level is still a simple int.
              mainLevel: 20,
              // Here we now pass example XP values for each stat.
              agilityLevel: 8,
              agilityTotalXp: 532,
              agilityNextThreshold: 600,
              agilityPrevThreshold: 500,
              strengthLevel: 5,
              strengthTotalXp: 210,
              strengthNextThreshold: 250,
              strengthPrevThreshold: 200,
              enduranceLevel: 7,
              enduranceTotalXp: 380,
              enduranceNextThreshold: 420,
              endurancePrevThreshold: 360,
            ),
          ],
        )
        
      ),
    );
  }
}