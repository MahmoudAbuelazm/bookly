import 'package:flutter/material.dart';

import '../section/best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}