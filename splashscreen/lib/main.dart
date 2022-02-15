import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splashscreen/utils/constants.dart';
import 'package:splashscreen/utils/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Splash Screen',
        home: showHome ? HomePage() : MyStatefulWidget(),
      );
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final PageController controller = PageController();
  bool isLastPage = false;

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: mainPadding),
        child: buildPageView(),
      ),
      bottomSheet:
          isLastPage ? IsLastPage() : BuildContainer(controller: controller),
    );
  }

  PageView buildPageView() {
    return PageView(
      controller: controller,
      onPageChanged: (index) {
        setState(() => isLastPage = index == 2);
      },
      children: <Widget>[
        buildPage(
            urlImage: thirdImage,
            title: "Let's Travelling",
            subtitle:
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumyssss eirmod tempor inviduant ut"),
        buildPage(
            urlImage: secondImage,
            title: "Navigation",
            subtitle:
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumyssss eirmod tempor inviduant ut"),
        buildPage(
            urlImage: firstImage,
            title: "Destination",
            subtitle:
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumyssss eirmod tempor inviduant ut"),
      ],
    );
  }
}

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 50,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                spacing: 16,
                activeDotColor: primary,
              ),
              onDotClicked: (index) => controller.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut),
            ),
          ),
          ElevatedButton(
            onPressed: () => controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut),
            style: ElevatedButton.styleFrom(
              primary: primary,
              onPrimary: textColor,
              minimumSize: Size(120, 50),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
            ),
            child: const Text(
              "Skip",
              style: TextStyle(fontSize: titleFontSize),
            ),
          ),
        ],
      ),
    );
  }
}

class IsLastPage extends StatelessWidget {
  const IsLastPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        primary: textColor,
        backgroundColor: primary,
        minimumSize: Size.fromHeight(80),
      ),
      onPressed: () async {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: const Text(
        "Let's Go!",
        style: TextStyle(fontSize: titleFontSize),
      ),
    );
  }
}
