import 'package:flutter/material.dart';
import 'package:user_profile_ui2/model/articles_json.dart';
import 'package:user_profile_ui2/utils/constants.dart';
import 'package:user_profile_ui2/utils/store_card.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
            top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Articles",
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(storeItems.length, (index) {
                  var store = storeItems[index];
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          child: StoreCard(width: 280, store: store),
                        ),
                      ),
                    );
                  }
                  return Padding(
                    padding:
                    const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        child: StoreCard(width: 280, store: store),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}