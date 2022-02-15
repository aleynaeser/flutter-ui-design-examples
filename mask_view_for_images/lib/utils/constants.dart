import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

const Color background = Colors.black54;
const Color primary = Colors.indigo;

const double titleFontSize = 100;

const String firstMask =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUCxLX5UopFxD-AbfHL5dTgoHyA2LM6oOgXrkHoW_oc35IR9_D6CfHbYcxqYEHLnsdQMk&usqp=CAU";
const String firstImage =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNAhCvAG_eHCtBvfBjla-s85iR_a5EagbtmQ&usqp=CAU";
const String secondImage =
    "http://assets.stickpng.com/images/5ecec78673e4440004f09e77.png";
const String secondMask =
    "https://cdn.europosters.eu/image/1300/posters/pokemon-pikachu-neon-i71936.jpg";
const String thirdMask =
    "https://www.freeiconspng.com/thumbs/colored-smoke-png/colored-smoke-png-transparent-29.png";

class MaskedImage extends StatelessWidget {
  final ImageProvider image;
  final Widget child;

  MaskedImage({
    required this.image,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<ui.Image>(
        future: loadImage(),
        builder: (context, snap) => snap.hasData
            ? ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) => ImageShader(snap.data!,
                    TileMode.clamp, TileMode.clamp, Matrix4.identity().storage),
                child: child,
              )
            : Container(),
      );

  Future<ui.Image> loadImage() async {
    final completer = Completer<ui.Image>();
    final stream = image.resolve(ImageConfiguration());
    stream.addListener(
        ImageStreamListener((info, _) => completer.complete(info.image)));
    return completer.future;
  }
}
