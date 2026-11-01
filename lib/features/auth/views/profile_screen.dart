
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_design/core/theme/app_colors.dart';
import 'package:ui_design/features/auth/views/full_profile_image.dart';

final List<Map<String, String>> thoughts = [
  {
    "title": "My First Thought",
    "description": "Life is a journey of continuous learning."
  },
  {
    "title": "My Second Thought",
    "description": "Consistency is more important than motivation."
  },
  {
    "title": "My Third Thought",
    "description": "Never stop learning and improving yourself."
  },
];

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget thoughtCard({
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.headerTextPrimary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                height: 1.5,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Profile header
          SizedBox(
            height: 390,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 245,
                  width: double.infinity,
                  color: AppColors.buttonBackground,
                ),

                Positioned(
                  top: 60,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Settings",
                        style: TextStyle(
                          color: AppColors.background,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        "Profile",
                        style: TextStyle(
                          color: AppColors.background,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          context.go("/login");
                        }, 
                        child:     const Text(
                        "Logout",
                        style: TextStyle(
                          color: AppColors.background,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),)
                  
                    ],
                  ),
                ),

                Positioned(
                  top: 128,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const FullProfileImage(),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'profile-image',
                        child: Container(
                          height: 158,
                          width: 158,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'lib/assets/images/1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 302,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Column(
                      children: [
                        const Text(
                          "Raju Gupta",
                          style: TextStyle(
                            color: AppColors.headerTextPrimary,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          "Aham Tubhyam Pranayami",
                          style: TextStyle(
                            color: AppColors.headerTextPrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Thoughts section
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "My Thoughts",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.headerTextPrimary,
                    ),
                  ),
                ),

                ...thoughts.map(
                  (thought) => thoughtCard(
                    title: thought["title"]!,
                    description: thought["description"]!,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
