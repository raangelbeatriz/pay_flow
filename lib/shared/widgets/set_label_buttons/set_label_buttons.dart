import 'package:flutter/material.dart';
import 'package:pay_flow/shared/widgets/divider_vertical/divider_vertical.dart';
import 'package:pay_flow/shared/widgets/label_button/label_button.dart';

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
    return Container(
      height: 56,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child:
                LabelButton(label: primaryLabel, onPressed: primaryOnPressed),
          ),
          DividerVertical(),
          Expanded(
            child: LabelButton(
                label: secondaryLabel, onPressed: secondaryOnPressed),
          ),
        ],
      ),
    );
  }
}
