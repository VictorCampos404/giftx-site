import 'package:flutter/material.dart';
import 'package:site/core/app_colors.dart';
import 'package:site/core/app_images.dart';
import 'package:site/core/app_spaces.dart';
import 'package:site/core/app_text.dart';
import 'package:site/view/components/custom_button.dart';

class CustomSection03 extends StatelessWidget {
  const CustomSection03({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // final isPhone = constraints.maxWidth < 900;

        return Container(
          width: MediaQuery.of(context).size.width,
          color: AppColors.blue01,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(
            AppSpaces.x10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(
                  AppSpaces.x5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppImages.handCard,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: AppSpaces.x4,
                      ),
                      child: const Text(
                        "Ready to\nstart giving?",
                      ).sectionTitle(
                        style: const TextStyle(
                          color: AppColors.text02,
                        ),
                      ),
                    ),
                    CustomButton.secondary(
                      label: "Get Givingli",
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: AppSpaces.x10,
                    ),
                    const SizedBox(
                      height: AppSpaces.x10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSpaces.x10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: AppSpaces.x1,
                      ),
                      child: Image.asset(
                        AppImages.logoDark,
                        width: 16,
                        height: 16,
                      ),
                    ),
                    const SizedBox(
                      height: AppSpaces.half,
                    ),
                    const Text(
                      "Todos direitos reservados a Giftx®",
                    ).mark()
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
