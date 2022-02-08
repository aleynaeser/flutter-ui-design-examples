import 'package:flutter/material.dart';
import 'package:food_order_ui/models/categories_json.dart';
import 'package:food_order_ui/utils/constants.dart';
import 'package:food_order_ui/utils/helper.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(storeTypes.length, (index) {
              return Container(
                width: 120,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    getSvgIcon(storeTypes[index]['image']),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(storeTypes[index]['name'],
                        style: const TextStyle(
                          color: textColor,
                        ))
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
