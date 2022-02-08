import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:food_order_ui/utils/constants.dart';

class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  int _currentIndex=0;

  List cardList=[
    Ad1(),
    Ad2(),
  ];

  List<Cat> map<Cat>(List list, Function handler) {
    List<Cat> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: cardList.map((card){
                  return Builder(
                      builder:(BuildContext context){
                        return SizedBox(
                          height: MediaQuery.of(context).size.height*0.30,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: mainColor,
                            child: card,
                          ),
                        );
                      }
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(cardList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index ? mainColor : textColor,
                    ),
                  );
                }),
              ),
            ],
          );
  }
}

class Ad1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/ad1.png',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Ad2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/ad2.png',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}