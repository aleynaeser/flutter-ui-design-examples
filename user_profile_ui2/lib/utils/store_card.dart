import 'package:flutter/material.dart';
import 'constants.dart';



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
      width: width,
      decoration: BoxDecoration(
        color: primary,
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
                borderRadius: const BorderRadius.only(
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
                  store["is_published"] ? "Published" : "Not Published",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: store["is_published"] ?  Colors.green[900] : Colors.red[900],
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  store["name"] ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  store["tags"] ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(icon: const Icon(Icons.watch_later_outlined), onPressed: null ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Est: " + store["read_time"],
                      style: const TextStyle(
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