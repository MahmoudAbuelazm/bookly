import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
