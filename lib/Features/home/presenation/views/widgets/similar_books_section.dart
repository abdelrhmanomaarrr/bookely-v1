import 'package:bookely/Features/home/presenation/views/widgets/similar_booka_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styless.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 6,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
