import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:post_screen_ui/model/article_json.dart';
import 'package:post_screen_ui/utils/constant.dart';
import 'package:post_screen_ui/widget/storeCard.dart';

class BuildPsychiatristArticleList extends StatefulWidget {
  const BuildPsychiatristArticleList({Key? key}) : super(key: key);

  @override
  _BuildPsychiatristArticleListState createState() =>
      _BuildPsychiatristArticleListState();
}

class _BuildPsychiatristArticleListState extends State<BuildPsychiatristArticleList> {
  String category = 'Psychiatrist';

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                if (articles[index]['cat'] == category) {
                  var store = articles[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, left: padding, right: padding, top: padding),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: StoreCard(
                            width: MediaQuery.of(context).size.width,
                            store: store,
                          index: index,),
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: SizedBox(),
                  );
                }
              }),
        ),
      );
    });
  }
}
