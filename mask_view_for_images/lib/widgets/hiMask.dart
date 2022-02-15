import 'package:flutter/cupertino.dart';
import 'package:mask_view_for_images/utils/constants.dart';
import 'package:widget_mask/widget_mask.dart';

class HiMask extends StatelessWidget {
  const HiMask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: WidgetMask(
        blendMode: BlendMode.srcIn,
        childSaveLayer: true,
        mask: Image.network(
          firstMask,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
        child: const Text(
          "HI",
          style: TextStyle(fontSize: 150),
        ),
      ),
    );
  }
}