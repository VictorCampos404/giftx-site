import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:site/core/app_colors.dart';
import 'package:site/core/app_images.dart';
import 'package:site/core/app_spaces.dart';
import 'package:site/core/app_text.dart';

class CustomSectionFutures extends StatelessWidget {
  const CustomSectionFutures({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isPhone = constraints.maxWidth < 900;

        return Container(
          padding: const EdgeInsets.only(
            top: AppSpaces.x4,
            bottom: AppSpaces.x8,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: AppSpaces.x8,
                ),
                child: const Text(
                  "Explore endless\npossibilities.",
                  textAlign: TextAlign.center,
                ).sectionTitle(),
              ),
              CarouselSlider(
                items: [
                  Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppSpaces.x1,
                    ),
                    padding: const EdgeInsets.all(
                      AppSpaces.x3,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.purple03,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Customization",
                        ).cardTitle(
                          style: const TextStyle(
                            color: AppColors.purple02,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  AppImages.customization,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        const Text(
                          "Use a pre-designed template or personalize with video, stickers, fonts, and more",
                        ).cardLabel(
                          style: const TextStyle(
                            color: AppColors.purple02,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppSpaces.x1,
                    ),
                    padding: const EdgeInsets.all(
                      AppSpaces.x3,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.pink01,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Scheduling",
                        ).cardTitle(
                          style: const TextStyle(
                            color: AppColors.pink02,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  AppImages.scheduling,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        const Text(
                          "Use a pre-designed template or personalize with video, stickers, fonts, and more",
                        ).cardLabel(
                          style: const TextStyle(
                            color: AppColors.pink02,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppSpaces.x1,
                    ),
                    padding: const EdgeInsets.all(
                      AppSpaces.x3,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.green01,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Wallet",
                        ).cardTitle(
                          style: const TextStyle(
                            color: AppColors.green02,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  AppImages.wallet,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        const Text(
                          "Use a pre-designed template or personalize with video, stickers, fonts, and more",
                        ).cardLabel(
                          style: const TextStyle(
                            color: AppColors.green02,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppSpaces.x1,
                    ),
                    padding: const EdgeInsets.all(
                      AppSpaces.x3,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.yellow01,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Inbox",
                        ).cardTitle(
                          style: const TextStyle(
                            color: AppColors.yellow02,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  AppImages.inbox,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        const Text(
                          "Use a pre-designed template or personalize with video, stickers, fonts, and more",
                        ).cardLabel(
                          style: const TextStyle(
                            color: AppColors.yellow02,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppSpaces.x1,
                    ),
                    padding: const EdgeInsets.all(
                      AppSpaces.x3,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.orange01,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Send gifts",
                        ).cardTitle(
                          style: const TextStyle(
                            color: AppColors.orange02,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  AppImages.cards,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        const Text(
                          "Use a pre-designed template or personalize with video, stickers, fonts, and more",
                        ).cardLabel(
                          style: const TextStyle(
                            color: AppColors.orange02,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppSpaces.x1,
                    ),
                    padding: const EdgeInsets.all(
                      AppSpaces.x3,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.blue02,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Reminders",
                        ).cardTitle(
                          style: const TextStyle(
                            color: AppColors.blue03,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  AppImages.reminder,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSpaces.x3,
                        ),
                        const Text(
                          "Use a pre-designed template or personalize with video, stickers, fonts, and more",
                        ).cardLabel(
                          style: const TextStyle(
                            color: AppColors.blue03,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: isPhone ? 500 : 400,
                  viewportFraction: isPhone ? 1 : 0.3,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
