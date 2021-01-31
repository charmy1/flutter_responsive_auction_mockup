import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masked_text_input_formatter/masked_text_input_formatter.dart';
import 'package:sized_context/sized_context.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/dialog_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/credit_card_dialog_widget.dart';
class CreditCardDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext dialogContext) {
    return Dialog(
      //this right here
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banka Havalesi İle Ö
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Kredi Kartı İle Ödem
                  Text("Kredi Kartı İle Ödeme", style: TextStyles.textStyle4),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(dialogContext);
                    },
                    child: SvgPicture.asset(
                      "assets/images/svg/close.svg",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: dialogContext.heightPct(.025 / 2),
              ),
              // Toplam Ödenecek Tuta
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        style: TextStyles.textStyle5,
                        text: "Toplam Ödenecek Tutar: "),
                    TextSpan(style: TextStyles.textStyle21, text: "150,00 TL")
                  ])),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              // Siz banka havalesi i

              // Kart Üzerindeki İsim
              Text("Kart Üzerindeki İsim", style: TextStyles.textStyle14),
              TextFormField(
                style: TextStyles.textStyle37,

                //// Kart Üzerindeki İsim
                //Text(
                //"Kart Üzerindeki İsim",
                //style: TextStyles.textStyle37
                //)
                decoration: formDecoration.copyWith(
                  hintText: "Kart Üzerindeki İsim",
                  hintStyle: TextStyles.textStyle37,
                ),
              ),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              // Kart Numarası
              Text("Kart Numarası", style: TextStyles.textStyle14),

              TextField(
                decoration: formDecoration.copyWith(
                    hintText: "", hintStyle: TextStyles.textStyle37),
                style: TextStyles.textStyle37,
                inputFormatters: [
                  MaskedTextInputFormatter(
                    mask: 'mm/yy',
                    separator: '/',
                  ),
                ],
              ),

              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Kart Numarası
                        Text("Kart Numarası", style: TextStyles.textStyle14),
                        TextField(
                          inputFormatters: [
                            MaskedTextInputFormatter(
                              mask: 'MM/YY',
                              separator: '/',
                            ),
                          ],
                          style: TextStyles.textStyle37,

                          //// Kart Üzerindeki İsim
                          //Text(
                          //"Kart Üzerindeki İsim",
                          //style: TextStyles.textStyle37
                          //)
                          decoration: formDecoration.copyWith(
                            hintText: "MM/YY",
                            hintStyle: TextStyles.textStyle37,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: dialogContext.widthPct(.01*2),),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // CVV
                        Text("CVV", style: TextStyles.textStyle14),
                        TextFormField(
                          style: TextStyles.textStyle37,

                          //// Kart Üzerindeki İsim
                          //Text(
                          //"Kart Üzerindeki İsim",
                          //style: TextStyles.textStyle37
                          //)
                          decoration: formDecoration.copyWith(
                            hintText: "CVV",
                            hintStyle: TextStyles.textStyle37,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              Row(
                children: <Widget>[
                  Expanded(child: CustomRoundButton(name: "Ödemeyi Tamamla",),)
                ],
              ),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              Align(alignment: Alignment.center,child: Image.asset("assets/images/creditlogo/3_d.png"),)
            ],
          ),
        ),
      ),
    );
  }
}