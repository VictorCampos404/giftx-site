import 'package:flutter/material.dart';
import 'package:site/core/app_colors.dart';
import 'package:site/core/app_images.dart';
import 'package:site/core/app_spaces.dart';
import 'package:site/core/app_text.dart';

class CustomSection02 extends StatelessWidget {
  const CustomSection02({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isPhone = constraints.maxWidth < 900;

        return Container(
          width: MediaQuery.of(context).size.width,
          color: AppColors.background,
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpaces.x2,
              vertical: AppSpaces.x4,
            ),
            width: isPhone ? null : MediaQuery.of(context).size.width * 0.35,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Givingli\nCash",
                  textAlign: TextAlign.center,
                ).sectionTitle(
                  style: const TextStyle(
                    color: AppColors.text01,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppSpaces.x4,
                    bottom: AppSpaces.x8,
                  ),
                  child: Image.asset(
                    AppImages.phoneFrame,
                    height: MediaQuery.of(context).size.height * 0.75,
                  ),
                ),
                const Text(
                  "No more gift returns. Ever. Givingli Cash gives your friends and family the ability to choose and swap anything in the gift store.",
                  textAlign: TextAlign.center,
                ).sectionLabel(
                  style: const TextStyle(
                    color: AppColors.text01,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
