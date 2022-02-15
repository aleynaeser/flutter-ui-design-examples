import 'package:flutter/material.dart';
import 'package:user_profile_ui/utils/constants.dart';

class buildTop extends StatelessWidget {
  const buildTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
      Container(
          margin: EdgeInsets.only(bottom: bottom ),
          child: buildCoverImage()),
      Positioned(
        top: top,
        child: buildProfileImage(),)
    ]);
  }
}

Widget buildCoverImage() {
  return Container(
    color: primary,
    child: Image.network(
      firstImage,
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );
}

Widget buildProfileImage() {
  return const CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: primary,
    backgroundImage: NetworkImage(
        profile
    ),
  );
}
