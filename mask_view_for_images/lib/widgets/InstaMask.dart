
import 'package:flutter/cupertino.dart';
import 'package:mask_view_for_images/utils/constants.dart';
import 'package:widget_mask/widget_mask.dart';

class InstaMask extends StatelessWidget {
  const InstaMask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetMask(
      blendMode: BlendMode.srcATop,
      childSaveLayer: true,
      mask: Image.network(
        secondMask,
        fit: BoxFit.cover,
        alignment: Alignment.topLeft,
      ),
      child: Image.network(
        secondImage,
      ),
    );
  }
}