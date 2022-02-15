import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_ui/models/tag_json.dart';
import 'package:user_profile_ui/utils/constants.dart';

Widget buildTags() {
  return SizedBox(
    width: double.infinity,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(storeTypes.length, (index) {
          return SizedBox(
            width: containerHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(storeTypes[index]['name'],
                      style: const TextStyle(
                        color: Colors.white,
                      )),
                  style: ElevatedButton.styleFrom(
                    primary: primary,
                    minimumSize: Size(100, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                         Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    ),
  );
}