import 'package:flutter/material.dart';

class FullProfileImage extends StatelessWidget {
  const FullProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: 'profile-image',
              child: Image.asset(
                'lib/assets/images/1.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}