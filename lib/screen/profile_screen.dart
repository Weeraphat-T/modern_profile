import 'package:flutter/material.dart';
import 'package:modern_profile/constant/constant.dart';
import 'package:modern_profile/screen/editprofile_screen.dart';
import 'package:modern_profile/screen/homepage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedItem = 0;

  void _navigationBottomNavBar(int index) {
    setState(() {
      _selectedItem = index;
      print(index);
    });
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const Text('Setting'),
    const Text('Favorite'),
    const EditProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: iconSecondaryColor,
        ),
        title: Center(
            child: Text(
          'Edit Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.exit_to_app,
            size: 20,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(86, 255, 129, 247),
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _navigationBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: iconSecondaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
              color: iconSecondaryColor,
            ),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 30,
              color: iconSecondaryColor,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
              color: iconSecondaryColor,
            ),
            label: 'Edit Profile',
          ),
        ],
      ),
    );
  }
}
