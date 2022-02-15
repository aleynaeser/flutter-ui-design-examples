import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_view_for_images/utils/constants.dart';
import 'package:widget_mask/widget_mask.dart';

class FlutterMask extends StatelessWidget {
  const FlutterMask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetMask(
      blendMode: BlendMode.srcATop,
      childSaveLayer: true,
      mask: Image.network(
        firstMask,
        fit: BoxFit.cover,
        alignment: Alignment.bottomCenter,
      ),
      child: const FlutterLogo(size: 200),
    );
  }
}