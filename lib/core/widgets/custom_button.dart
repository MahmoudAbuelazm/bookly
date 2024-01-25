import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CutomsButton extends StatelessWidget {
  const CutomsButton({super.key, required this.backgroundColor, required this.textColor,  this.borderRadius, required this.text, required this.onPressed});
final Color backgroundColor;
final Color textColor;
final BorderRadius? borderRadius;
final String text;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
