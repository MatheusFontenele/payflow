import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minWidth: 200, maxWidth: 300),
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(8),
            border: const Border.fromBorderSide(
                BorderSide(color: AppColors.stroke))),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(color: AppColors.stroke, width: 2))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.googleIcon),
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Entrar com google',
                    style: AppTextStyles.buttonGray,
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
