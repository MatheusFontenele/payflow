import 'package:flutter/cupertino.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        color: AppColors.shape,
        height: 56,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 56,
                child: LabelButton(
                  label: primaryLabel,
                  onPressed: primaryOnPressed,
                  style: AppTextStyles.buttonBoldPrimary,
                ),
              ),
            ),
            const DividerVerticalWidget(),
            Expanded(
              child: SizedBox(
                height: 56,
                child: LabelButton(
                  label: secondaryLabel,
                  onPressed: secondaryOnPressed,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
