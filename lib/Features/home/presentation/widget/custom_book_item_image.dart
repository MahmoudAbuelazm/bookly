import 'package:flutter/widgets.dart';

import '../../../../core/utils/assets.dart';

class CustomBookItemImage extends StatelessWidget {
  const CustomBookItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.logo),
          ),
        ),
      ),
    );
  }
}
