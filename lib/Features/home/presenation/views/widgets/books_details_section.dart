import 'package:flutter/material.dart';

import '../../../../../core/utils/styless.dart';
import 'book_rating.dart';
import 'custom_list_view_item.dart';

class BookDetailsSections extends StatelessWidget {
  const BookDetailsSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .22),
          child: FeaturedListViewItem(),
        ),
        const SizedBox(
          height: 36,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
            opacity: .7,
            child: Text(
              "Rudyrad Kiling",
              style: Styles.textStyle18,
            )),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
