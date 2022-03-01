import 'package:flutter/material.dart';
import 'package:post_screen_ui/model/article_json.dart';
import 'package:post_screen_ui/model/category_json.dart';
import 'package:post_screen_ui/utils/constant.dart';
import 'package:post_screen_ui/widget/buildAppBar.dart';
import 'package:post_screen_ui/widget/buildArticlesContainer.dart';
import 'package:post_screen_ui/widget/storeCard.dart';
import 'package:post_screen_ui/widget/buildCategories.dart';
import 'package:post_screen_ui/widget/buildTitle.dart';

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
        child: Scaffold(
          appBar: buildAppBar(context),
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                SizedBox(height: 16),
                buildTitle(),
                SizedBox(height: 8),
                buildCategories(),
                Divider(
                  thickness: 1,
                ),
                BuildArticleList()
              ],
            ),
          ),
        ),
      );
    });
  }
}
