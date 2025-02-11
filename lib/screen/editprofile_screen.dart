import 'package:flutter/material.dart';
import 'package:modern_profile/constant/constant.dart';
import 'package:modern_profile/screen/profile_img.dart';
import 'package:modern_profile/screen/profile_menu.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        const ProfileImage(),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Mr.Weeraphat Trirattananon',
          style: textTitle,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          'Fluke@gmail.com',
          style: textSubTitle,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 241, 208, 1),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Center(
              child: Text(
            'Edit Profile',
            style: TextBtn,
          )),
        ),
        const SizedBox(
          height: 20,
        ),
        const ProfileMenu(
          title: 'Setting',
          icons: Icons.settings,
        ),
        const SizedBox(
          height: 15,
        ),
        const ProfileMenu(
          title: 'Billing Detail',
          icons: Icons.wallet,
        ),
        const SizedBox(
          height: 15,
        ),
        const ProfileMenu(
          title: 'User Management',
          icons: Icons.person,
        ),
        const SizedBox(
          height: 200,
        ),
        const ProfileMenu(
          title: 'Favorite',
          icons: Icons.favorite,
        ),
        const SizedBox(
          height: 35,
        ),
        const ProfileMenu(
          title: 'LogOut',
          icons: Icons.logout,
        ),
        const SizedBox(
          height: 15,
        ),
      ]),
    );
  }
}