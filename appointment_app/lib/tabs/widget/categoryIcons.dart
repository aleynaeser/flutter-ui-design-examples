import 'package:flutter/material.dart';

import 'categoryIcon.dart';

List<Map> categories = [
  {'icon': Icons.video_call, 'text': 'Call'},
  {'icon': Icons.question_answer, 'text': 'Ask'},
  {'icon': Icons.add_box_rounded , 'text': 'Appointment'},
  {'icon': Icons.article, 'text': 'Articles'},
];

class CategoryIcons extends StatelessWidget {
  const CategoryIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var category in categories)
          CategoryIcon(
            icon: category['icon'],
            text: category['text'],
          ),
      ],
    );
  }
}