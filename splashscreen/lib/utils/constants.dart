import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const Color primary = Colors.indigoAccent;
const Color titleColor = Colors.indigo;
const Color textColor = Colors.white;

const double titleFontSize = 25;
const double subTitleFontSize = 15;

const double mainPadding = 50;

const String firstImage = "images/mode1.svg";
const String secondImage = "images/mode2.svg";
const String thirdImage = "images/mode3.svg";
const String fourImage = "images/mode4.svg";

Widget buildPage({
  required String urlImage,
  required String title,
  required subtitle,
}) =>
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            (urlImage),
            fit: BoxFit.fill,
            height: 300,
            width: 300,
            allowDrawingOutsideViewBox: true,
          ),
          const SizedBox(
            height: 64,
          ),
          Text(
            title,
            style: const TextStyle(
                color: titleColor,
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 50 , vertical:20),
            child: Text(
              subtitle,
              style:
                  const TextStyle(color: primary, fontSize: subTitleFontSize),
            ),
          )
        ],
      ),
    );
