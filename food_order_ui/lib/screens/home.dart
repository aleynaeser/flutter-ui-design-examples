import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_order_ui/utils/constants.dart';

import 'ads.dart';
import 'categories.dart';
import 'kitchens.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: SearchHeader(
              icon: Icons.shopping_cart_rounded,
              icon1: Icons.notifications_active_outlined,
              title: 'Cultural Kitchen',
              search: _Search(),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Expanded(
              child: ListView(
                children: [
                  Ads(),
                  Categories(),
                  Kitchens(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Search extends StatefulWidget {
  _Search({Key? key}) : super(key: key);

  @override
  __SearchState createState() => __SearchState();
}

class __SearchState extends State<_Search> {
  late TextEditingController _editingController;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: TextField(
              cursorColor: textColor,
              controller: _editingController,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Search Kitchen...',
                hintStyle: TextStyle(color: textColor.withOpacity(0.5)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          _editingController.text.trim().isEmpty
              ? IconButton(
                  icon: Icon(Icons.search, color: textColor.withOpacity(0.5)),
                  onPressed: null)
              : IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.clear, color: textColor.withOpacity(0.5)),
                  onPressed: () => setState(
                    () {
                      _editingController.clear();
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

class SearchHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = 100;
  final double maxTopBarHeight = 150;
  final String title;
  final IconData icon;
  final IconData icon1;
  final Widget search;

  SearchHeader({
    required this.title,
    required this.icon,
    required this.icon1,
    required this.search,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height:
            max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
        width: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon1,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(title,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(
              width: 20,
            ),
            Icon(
              icon,
              size: 30,
              color: Colors.white,
            )
          ],
        ),
        decoration: const BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
      ),
    );
    return Container(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          if (shrinkFactor <= 0.5) topBar,
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                alignment: Alignment.center,
                child: search,
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 10,
                        color: mainColor,
                      )
                    ]),
              ),
            ),
          ),
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => 180;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
