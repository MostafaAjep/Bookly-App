import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.textColor,
    this.border,
    this.fontWeight,
  });
  final Color backgroundColor;
  final Color textColor;
  final String title;
  final BorderRadiusGeometry? border;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: border ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: fontWeight ?? FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
