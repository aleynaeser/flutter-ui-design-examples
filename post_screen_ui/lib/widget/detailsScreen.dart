import 'package:flutter/material.dart';
import 'package:post_screen_ui/model/article_json.dart';
import 'package:post_screen_ui/utils/constant.dart';

class DetailsScreen extends StatelessWidget {
  final int index;

  const DetailsScreen({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 50,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            bottom: 150,
                            child: Container(
                              alignment: Alignment.topCenter,
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              color: iconColor,
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back,
                                        color: backgroundColor,),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                  Text(
                                    "${articles[index]['title']}",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: backgroundColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const IconButton(
                                          icon: Icon(
                                            Icons.watch_later_outlined,
                                            color: Colors.amber,
                                          ),
                                          onPressed: null),
                                      Text(
                                        "${articles[index]['read_time']}",
                                        style: const TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width:10),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 15,
                            child: Container(
                              margin: EdgeInsets.all(25.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: iconColor,
                                    blurRadius: 5.0,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.network(
                                  articles[index]['banner'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            height: 70,
                            width: 70,
                            bottom: 15,
                            right: 35,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3.0,
                                      color: iconColor,
                                      offset: Offset(0, 5)),
                                ],
                              ),
                              child: CircleAvatar(
                                backgroundImage:
                                NetworkImage(articles[index]['author_img']),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: padding, right: padding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: "By ",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "${articles[index]['author']}",
                                  style: const TextStyle(
                                    color: iconColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.date_range,
                                size:18,
                                color: iconColor,
                              ),
                              Text(" ${articles[index]['date']}",
                                style: const TextStyle(
                                  color: black,
                                  fontSize: 12,
                                ),),
                              Spacer(),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    onPrimary: black,
                                    minimumSize: const Size(80, 30),
                                    side: const BorderSide(
                                        width: 1, color: backgroundColor),
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(15), // <-- Radius
                                    ),
                                  ),
                                  child: Text(
                                    "${articles[index]['cat']}",
                                    style: const TextStyle(
                                      color: black,
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                            " ${articles[index]['article']}",
                            style: const TextStyle(
                              color: black,
                                height: 1.8,
                                fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}