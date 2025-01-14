import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.background = const Color(0xff30312D),
    required this.text,
    required this.onPressed,
    this.foregroundColor = Colors.white,
    this.height,
    this.width,
    this.radius,
    this.borderRadius,
  });
  final String text;
  final Function() onPressed;
  final Color background;
  final Color foregroundColor;
  final double? height;
  final double? width;
  final double? radius;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45,
      width: width ?? 250,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: background ?? AppColors.whitecolor,
              foregroundColor: foregroundColor ?? AppColors.blackcolor),
          onPressed: onPressed,
          child: Text(
            text,
            style: getTitelstyle(color: AppColors.whitecolor),
          )),
    );
  }
}
