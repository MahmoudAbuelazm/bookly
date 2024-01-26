import 'package:flutter/material.dart';

import '../widget/custom_book_details_app_bar.dart';
import '../widget/similar_books_list_view.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomAppBar(),
                SimilarBookListView(),
                Expanded(
                  child: SizedBox(
                    height: 25,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
