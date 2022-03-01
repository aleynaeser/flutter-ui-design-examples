import 'package:flutter/material.dart';
import 'package:post_screen_ui/model/category_json.dart';
import 'package:post_screen_ui/utils/constant.dart';

class buildCategories extends StatelessWidget {
  const buildCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 10,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, i) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    onPrimary: black,
                    minimumSize: const Size(80, 30),
                    side: const BorderSide(width: 1, color: backgroundColor),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // <-- Radius
                    ),
                  ),
                  child: Text(
                    "${categories[i]['name']}",
                    style: const TextStyle(
                      color: black,
                    ),
                  )),
            );
          }),
    );
  }
}
