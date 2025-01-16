import 'package:flutter/material.dart';
import 'package:site/core/app_colors.dart';
import 'package:site/core/app_images.dart';
import 'package:site/core/app_spaces.dart';
import 'package:site/core/app_text.dart';

class CustomSection01 extends StatelessWidget {
  const CustomSection01({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isPhone = constraints.maxWidth < 900;

        return Container(
          width: MediaQuery.of(context).size.width,
          color: AppColors.purple01,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpaces.x2,
                  vertical: AppSpaces.x4,
                ),
                child: Image.asset(
                  isPhone
                      ? AppImages.backgroundSectionPhone
                      : AppImages.backgroundSectionDesktop,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpaces.x2,
                  vertical: AppSpaces.x4,
                ),
                width:
                    isPhone ? null : MediaQuery.of(context).size.width * 0.35,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: AppSpaces.x2,
                      ),
                      child: const Text(
                        "Givingli\nCash",
                        textAlign: TextAlign.center,
                      ).sectionTitle(
                        style: const TextStyle(
                          color: AppColors.purple02,
                        ),
                      ),
                    ),
                    const Text(
                      "No more gift returns. Ever. Givingli Cash gives your friends and family the ability to choose and swap anything in the gift store.",
                      textAlign: TextAlign.center,
                    ).sectionLabel(
                      style: const TextStyle(
                        color: AppColors.purple02,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
