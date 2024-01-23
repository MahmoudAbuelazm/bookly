import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../widget/custom_app_bar.dart';
import '../widget/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CutsomAppBar(),
        FeaturedBookListView(),
        SizedBox(
          height: 20,
        ),
        Text(
          'Best Seller',
          style: Styles.textStyle18,
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.logo),
                ),
              ),
            ),
          ),
          const Column(
            children: [
              Text('Book Title'),
              Text('Author Name'),
            ],
          )
        ],
      ),
    );
  }
}
