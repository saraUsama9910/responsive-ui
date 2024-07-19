import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:respons/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
