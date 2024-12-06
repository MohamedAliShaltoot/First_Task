import 'package:flutter/material.dart';
import 'package:screens/core/Utilities/app_colors.dart';
import 'package:screens/presentation/Widgets/Screens/settings_screen.dart';
import 'package:screens/presentation/Widgets/menu_items.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: AppColors.primary),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SettingsScreen();
            }));
          },
        ),
        centerTitle: true,
        title: const Text(
          "My Profile",
          style: TextStyle(
              color: AppColors.primary,
              fontSize: 20,
              fontWeight: FontWeight.w900,
              //fontFamily: AppStrings.fontFamily
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/p1.jpeg'),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(80)),
                child: const Icon(Icons.pending),
              ),
            ]),
            const SizedBox(height: 10),
            const Text(
              "John Doe",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            // Menu Items
            const MenuItem(icon: Icons.person_2_outlined, title: "Profile"),
            const MenuItem(
                icon: Icons.favorite_border_outlined, title: "Favorite"),
            const MenuItem(icon: Icons.payment, title: "Payment Method"),
            const MenuItem(icon: Icons.privacy_tip, title: "Privacy Policy"),
            InkWell(
              onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SettingsScreen();
            }));
          } ,
              child: const MenuItem(icon: Icons.settings, title: "Settings")
              ),
            const MenuItem(icon: Icons.help, title: "Help"),
            const MenuItem(icon: Icons.logout, title: "Logout"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        backgroundColor: AppColors.primary,
        selectedItemColor: const Color.fromARGB(255, 28, 27, 27),
        unselectedItemColor: const Color.fromARGB(255, 234, 232, 232),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Calendar'),
        ],
      ),
    );
  }
}
