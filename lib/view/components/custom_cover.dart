import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:site/core/app_images.dart';
import 'package:site/core/app_spaces.dart';
import 'package:site/core/app_text.dart';
import 'package:site/view/components/custom_button.dart';

class CustomCover extends StatelessWidget {
  const CustomCover({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> _images = [
      AppImages.card1,
      AppImages.card2,
      AppImages.card3,
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final isPhone = constraints.maxWidth < 900;

        return Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.topCenter,
              child: Image.asset(
                isPhone
                    ? AppImages.backgroundPhone
                    : AppImages.backgroundDesktop,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppSpaces.x10,
                      bottom: AppSpaces.x2,
                    ),
                    child: const Text(
                      "Gift\nMore\nSmiles",
                      textAlign: TextAlign.center,
                    ).title(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: AppSpaces.x8,
                    ),
                    child: CustomButton.primary(
                      label: "Send a Givingli",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppSpaces.x4,
                      bottom: AppSpaces.x10,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.75,
                          alignment: Alignment.center,
                          child: Image.asset(
                            AppImages.phoneFrame,
                            width: MediaQuery.of(context).size.width * 0.6,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.75,
                          alignment: Alignment.center,
                          child: CarouselSlider(
                            items: [
                              for (int i = 0; i < _images.length; i++)
                                Image.asset(
                                  _images[i],
                                  fit: BoxFit.fill,
                                )
                            ],
                            options: CarouselOptions(
                              height: isPhone
                                  ? MediaQuery.of(context).size.width * 0.6
                                  : MediaQuery.of(context).size.width * 0.2,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
