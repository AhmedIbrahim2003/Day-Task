import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(
                  color: Color(0xFFFED36A),
                  fontSize: 11.79,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.60,
                ),
              ),
              Text(
                'Fazil Laghari',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.29,
                  fontFamily: 'Pilat Extended',
                  fontWeight: FontWeight.w600,
                  height: 1.23,
                ),
              )
            ],
          ),
          Container(
            width: 47,
            height: 48,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://images.squarespace-cdn.com/content/v1/5446f93de4b0a3452dfaf5b0/1626904421257-T6I5V5IQ4GI2SJ8EU82M/Above+Avalon+Neil+Cybart'),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          )
        ],
      ),
    );
  }
}
