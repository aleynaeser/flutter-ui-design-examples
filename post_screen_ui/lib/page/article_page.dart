import 'package:flutter/material.dart';
import 'package:post_screen_ui/utils/constant.dart';
import 'package:post_screen_ui/widget/buildAppBar.dart';
import 'package:post_screen_ui/widget/buildAllArticles.dart';
import 'package:post_screen_ui/widget/buildCardiologyArticles.dart';
import 'package:post_screen_ui/widget/buildDermatologyArticles.dart';
import 'package:post_screen_ui/widget/buildNeurologyArticles.dart';
import 'package:post_screen_ui/widget/buildPsychiatristArticles.dart';


class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: buildAppBar(context),
            backgroundColor: backgroundColor,
            body: TabBarView(
              children: [
                Container(child: BuildArticleList()),
                Container(child: BuildCardiologyArticleList()),
                Container(child: BuildDermatologyArticleList()),
                Container(child: BuildNeurologyArticleList()),
                Container(child: BuildPsychiatristArticleList()),
              ],
            ),
          ),
        ),
      );
    });
  }
}
