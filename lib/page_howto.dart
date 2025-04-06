import 'package:flutter/material.dart';

class HowTo extends StatelessWidget
{
  const HowTo();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/back_button.png',
                          width: 75,
                          height: 75,
                          ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'How To Exercise',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Push-ups',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/pushups.gif',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Lunges',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/lunges.gif',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Jumping Jacks',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/jumping_jacks.gif',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Squats',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/squats.gif',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Sit-ups',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/situps.gif',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Plank',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/planking.gif',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Burpees',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/burpees.gif',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Jogging',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/jogging.gif',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}