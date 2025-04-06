import 'package:flutter/material.dart';

class Profile extends StatelessWidget
{
  const Profile();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ],
          ),
        ],
      ),
    );
  }
}