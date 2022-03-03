import 'package:flutter/material.dart';
import 'package:post_screen_ui/utils/constant.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(

    leading: IconButton(onPressed: () {}, icon: const Icon(icon, color: black)),
    backgroundColor: Colors.transparent,
    elevation: 0,
      bottom: PreferredSize(
          child: TabBar(
              isScrollable: true,
              unselectedLabelColor: iconColor.withOpacity(0.5),
              labelColor: iconColor,
              indicatorColor: iconColor,
              tabs: const [
                Tab(
                  child: Text('All'),
                ),
                Tab(
                  child: Text('Cardiology'),
                ),
                Tab(
                  child: Text('Dermatology'),
                ),
                Tab(
                  child: Text('Neurology'),
                ),
                Tab(
                  child: Text('Psychiatrist'),
                ),
              ]),
          preferredSize: const Size.fromHeight(50.0)),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(searchIcon, color: black)),
            const SizedBox(
              width: 6,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(profileIcon, color: black, size: 48)),
          ],
        ),
      ),
    ],
  );
}
