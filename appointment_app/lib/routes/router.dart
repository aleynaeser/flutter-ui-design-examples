import 'package:appointment_app/page/details_screen.dart';
import 'package:appointment_app/page/home.dart';
import 'package:flutter/material.dart';


Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => Home(),
  '/detail': (context) => SliverDoctorDetail(),
};