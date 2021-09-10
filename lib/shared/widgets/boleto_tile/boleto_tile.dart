import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:pay_flow/shared/models/boleto_model.dart';
import 'package:pay_flow/shared/themes/app_text_style.dart';

class BoletoTile extends StatelessWidget {
  final BoletoModel data;

  const BoletoTile({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            data.name!,
            style: TextStyles.titleListTile,
          ),
          subtitle: Text(
            "Vence em ${data.dueDate}",
            style: TextStyles.captionBody,
          ),
          trailing: Text.rich(
            TextSpan(
              text: "R\$ ",
              style: TextStyles.trailingRegular,
              children: [
                TextSpan(
                  text: "${data.value!.toStringAsFixed(2)}",
                  style: TextStyles.trailingBold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
