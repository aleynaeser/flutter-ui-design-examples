import 'package:flutter/material.dart';
import 'package:user_profile_ui2/utils/constants.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = primary;
    return Center(
      child: Stack(
        children: [
          buildImage(),

        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);
    return ClipOval(
        child: Material(
      color: Colors.transparent,
      child: Ink.image(
        image: image,
        fit: BoxFit.cover,
        width: 128,
        height: 128,
        child: InkWell(onTap: onClicked),
      ),
    ));
  }
}
