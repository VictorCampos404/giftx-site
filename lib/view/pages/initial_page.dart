import 'package:flutter/material.dart';
import 'package:site/core/app_colors.dart';
import 'package:site/core/app_images.dart';
import 'package:site/core/app_spaces.dart';
import 'package:site/core/app_text.dart';
import 'package:site/view/components/custom_app_bar.dart';
import 'package:site/view/components/custom_button.dart';
import 'package:site/view/components/custom_cover.dart';
import 'package:site/view/components/custom_section_futures.dart';
import 'package:site/view/components/custom_section_01.dart';
import 'package:site/view/components/custom_section_02.dart';
import 'package:site/view/components/custom_section_03.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CustomCover(),
                CustomSectionFutures(),
                CustomSection01(),
                CustomSection02(),
                CustomSection03(),
              ],
            ),
          ),
          CustomAppBar(),
        ],
      ),
    );
  }
}
