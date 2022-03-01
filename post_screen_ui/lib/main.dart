import 'package:flutter/material.dart';
import 'package:post_screen_ui/page/article_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Article Page',
      debugShowCheckedModeBanner: false,
      home: ArticlePage(),
    );
  }
}
