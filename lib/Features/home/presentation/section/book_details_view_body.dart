import 'package:bookly/Features/home/presentation/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/widget/custom_book_item_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import '../widget/custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: const CustomBookItemImage(),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 10,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
