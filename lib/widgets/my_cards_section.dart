import 'package:flutter/material.dart';
import 'package:respons/utils/app_styles.dart';
import 'package:respons/widgets/dots_indicator.dart';
import 'package:respons/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My Card',
            style: AppStyles.styleSemiBold18(context)
                .copyWith(color: const Color.fromARGB(255, 39, 61, 102)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}
