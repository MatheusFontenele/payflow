import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(152),
            child: Container(
              height: 152,
              color: AppColors.primary,
              child: Center(
                child: ListTile(
                  title: Text(
                    "Ola, Matheus",
                    style: AppTextStyles.titleRegular,
                  ),
                  subtitle: Text(
                    "Mantenha suas contas em dias",
                    style: AppTextStyles.captionShape,
                  ),
                  trailing: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            )));
  }
}
