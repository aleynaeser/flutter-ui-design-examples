import 'package:flutter/material.dart';
import 'package:mask_view_for_images/utils/constants.dart';
import 'package:mask_view_for_images/widgets/comitfyMask.dart';
import 'package:mask_view_for_images/widgets/flutterMask.dart';
import 'package:mask_view_for_images/widgets/InstaMask.dart';
import 'package:mask_view_for_images/widgets/hiMask.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mask Views ',
        home: MaskView(),
      );
}

class MaskView extends StatefulWidget {
  const MaskView({Key? key}) : super(key: key);

  @override
  _MaskViewState createState() => _MaskViewState();
}

class _MaskViewState extends State<MaskView> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        controller: controller,
        children: const <Widget>[
          HiMask(),
          FlutterMask(),
          InstaMask(),
          ComitfyMask()
        ],
      )),
      bottomSheet: buildContainer(),
    );
  }

  Container buildContainer() {
    return Container(
      height: 100,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller,
          count: 4,
          effect: const WormEffect(
            spacing: 16,
            activeDotColor: primary,
          ),
          onDotClicked: (index) => controller.animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut),
        ),
      ),
    );
  }
}
