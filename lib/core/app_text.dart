import 'package:flutter/material.dart';
import 'package:site/core/app_colors.dart';

extension AppText on Text {
  Text title({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      fontSize: 71.5,
      height: 0.9,
      fontStyle: FontStyle.normal,
      color: AppColors.text01,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text button({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 0.9,
      fontStyle: FontStyle.normal,
      color: AppColors.text01,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text logo({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 24,
      height: 0.9,
      fontStyle: FontStyle.normal,
      color: AppColors.text01,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text sectionTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      fontSize: 60,
      height: 0.9,
      fontStyle: FontStyle.normal,
      color: AppColors.text01,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text sectionLabel({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 0.9,
      fontStyle: FontStyle.normal,
      color: AppColors.text01,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text mark({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 0.9,
      fontStyle: FontStyle.normal,
      color: AppColors.text01,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text cardTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 0.9,
      fontStyle: FontStyle.normal,
      color: AppColors.text01,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text cardLabel({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 0.9,
      fontStyle: FontStyle.normal,
      color: AppColors.text01,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }
}
