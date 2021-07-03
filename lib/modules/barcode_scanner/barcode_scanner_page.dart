import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_text_style.dart';
import 'package:pay_flow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:pay_flow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarCodeScannerPage extends StatefulWidget {
  const BarCodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarCodeScannerPageState createState() => _BarCodeScannerPageState();
}

class _BarCodeScannerPageState extends State<BarCodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: BottomSheetWidget(
        title: "Não foi possível identificae um código de barras.",
        subtitle: "Tente escanear novamente ou digite o código do seu boleto.",
        primaryLabel: "Escanear novamente",
        primaryOnPressed: () {},
        secondaryLabel: "Digitar código",
        secondaryOnPressed: () {},
      ),
    );
    return SafeArea(
      top: true,
      bottom: true,
      right: true,
      left: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              "Escaneie o código de barras do boleto",
              style: TextStyles.buttonBoldBackground,
            ),
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: "Inserir código do boleto",
            primaryOnPressed: () {},
            secondaryLabel: "Adicionar da galeria",
            secondaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
