import 'package:flutter/material.dart';
import 'package:site/core/app_images.dart';
import 'package:site/core/app_spaces.dart';
import 'package:site/core/app_text.dart';
import 'package:site/view/components/custom_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final isPhone = constraints.maxWidth < 900;

      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpaces.x4,
          vertical: AppSpaces.x2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: AppSpaces.x1,
                  ),
                  child: Image.asset(
                    AppImages.logoDark,
                    width: 24,
                    height: 24,
                  ),
                ),
                const Text("Giftx").logo()
              ],
            ),
            if (!isPhone)
              Row(
                children: [
                  CustomButton.secondary(
                    label: "About us",
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: AppSpaces.x2,
                  ),
                  CustomButton.primary(
                    label: "Start Gifting",
                    onTap: () {},
                  ),
                ],
              ),
          ],
        ),
      );
    });
  }
}
