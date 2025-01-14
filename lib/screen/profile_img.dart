import 'package:flutter/material.dart';
import 'package:modern_profile/constant/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Stack(alignment: Alignment.bottomRight, children: [
        CircleAvatar(
            backgroundColor: Color.fromARGB(255, 59, 13, 0),
            radius: 60,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('images/profile.jpg'),
            )),
        CircleAvatar(
          backgroundColor: bgSecondaryColor,
          radius: 22,
          child: CircleAvatar(
            backgroundColor: Color.fromRGBO(255, 241, 208, 1),
            child: Icon(
              Icons.edit,
              color: iconSecondaryColor,
            ),
          ),
        ),
      ]),
    );
  }
}
