import 'package:flutter/cupertino.dart';
import 'package:mask_view_for_images/utils/constants.dart';

class ComitfyMask extends StatelessWidget {
  const ComitfyMask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaskedImage(
              image: NetworkImage(
                thirdMask,
              ),
              child: const Text(
                'Comitfy',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}