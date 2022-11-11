import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_button/set_label_buttons.dart';

import '../../shared/widgets/botton_sheet/botton_sheet_widget.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    // return BottonSheetWidget(
    //   title: "Não foi possível identificar um código de barras.",
    //   subtitle: "Tente escanear novamente ou digite o código do seu boleto.",
    //   primaryLabel: "Escanear novamente",
    //   primaryOnPressed: () {},
    //   secondaryLabel: "Digitar código",
    //   secondaryOnPressed: () => {},
    // );
    return RotatedBox(
      quarterTurns: 1,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              title: Text(
                "Escaneie o codigo de barras do boleto",
                style: AppTextStyles.buttonBackground,
              ),
              leading: const BackButton(color: AppColors.background),
            ),
            body: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.7),
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
                    color: Colors.black.withOpacity(0.7),
                  ),
                )
              ],
            ),
            bottomNavigationBar: SetLabelButtons(
              primaryLabel: "Inserir codigo do boleto",
              primaryOnPressed: () => {},
              secondaryLabel: "Buscar boleto na galeria",
              secondaryOnPressed: () {},
            )),
      ),
    );
  }
}
