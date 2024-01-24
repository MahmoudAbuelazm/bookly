import 'package:bookly/Features/home/presentation/widget/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import '../widget/custom_app_bar.dart';
import '../widget/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CutsomAppBar(),
              FeaturedBookListView(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
