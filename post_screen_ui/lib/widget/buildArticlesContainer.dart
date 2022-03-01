import 'package:flutter/material.dart';
import 'package:post_screen_ui/model/article_json.dart';
import 'package:post_screen_ui/utils/constant.dart';
import 'package:post_screen_ui/widget/storeCard.dart';

class BuildArticleList extends StatefulWidget {
  const BuildArticleList({Key? key}) : super(key: key);

  @override
  _BuildArticleListState createState() => _BuildArticleListState();
}

class _BuildArticleListState extends State<BuildArticleList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: padding, bottom: padding),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Column(
                children: List.generate(articles.length, (index) {
                  var store = articles[index];
                  return Padding(
                    padding: const EdgeInsets.only(right:padding, left:padding, bottom: padding),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: StoreCard(width:MediaQuery.of(context).size.width, store: store),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}