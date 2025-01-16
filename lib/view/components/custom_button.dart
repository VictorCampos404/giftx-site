import 'package:flutter/material.dart';
import 'package:site/core/app_colors.dart';
import 'package:site/core/app_spaces.dart';
import 'package:site/core/app_text.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final Function()? onTap;
  final Color? backgroung;
  final Color? text;

  const CustomButton({
    super.key,
    this.label,
    this.onTap,
    this.backgroung,
    this.text,
  });

  factory CustomButton.primary({
    String? label,
    Function()? onTap,
  }) {
    return CustomButton(
      label: label,
      onTap: onTap,
      backgroung: AppColors.button01,
      text: AppColors.text02,
    );
  }

  factory CustomButton.secondary({
    String? label,
    Function()? onTap,
  }) {
    return CustomButton(
      label: label,
      onTap: onTap,
      backgroung: AppColors.button02,
      text: AppColors.text01,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(36),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpaces.x4,
          vertical: AppSpaces.x2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: backgroung,
        ),
        child: Text(label ?? "").button(
          style: TextStyle(
            color: text,
          ),
        ),
      ),
    );
  }
}
