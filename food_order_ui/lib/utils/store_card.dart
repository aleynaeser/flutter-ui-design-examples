import 'package:flutter/material.dart';

import 'constants.dart';
import 'helper.dart';


class StoreCard extends StatelessWidget {
  final store;
  final double width;

  const StoreCard({
    Key? key,
    required this.store,
    this.width = 250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: this.width,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.network(
                  getImageNetwork(store["image"]),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  store["is_open"] ? "Open" : "Close",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: store["is_open"] ?  Colors.green[900] : textColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  store["name"] ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  store["tags"] ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.watch_later_outlined), onPressed: null ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Est: " + store["delivery_time"],
                      style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}