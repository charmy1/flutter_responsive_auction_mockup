import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/credit_card_dialog_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/dialog_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masked_text_input_formatter/masked_text_input_formatter.dart';
import 'package:sized_context/sized_context.dart';

import '../../../../size_config.dart';

class CartPaymentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.red,

        child: CartPaymentWidget());
  }
}

class CartPaymentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Rectangle
                        Container(
                            width: 42,
                            height: 53,
                            child: Image.asset("assets/static/banner5.jpg",
                                fit:
                                    BoxFit.fill),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(1)))),
                        Spacer(),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(style: TextStyles.textStyle5, text: "1 x "),
                          TextSpan(
                              style: TextStyles.textStyle21,
                              text: "Ortyantalizm")
                        ])),

                        Spacer()
                      ],
                    ),
                    Divider(
                      color: ColorsCustom.silver,
                    ),
                    // Toplam Tutar
                    // Eserler
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Eserler", style: TextStyles.textStyle6),
                            // 150.00 TL
                            // 150.00 TL
                            Text("150.00 TL", style: TextStyles.textStyle33),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            // Teslimat
                            Text("Teslimat", style: TextStyles.textStyle6),
                            // 0.00 TL
                            Text("0.00 TL", style: TextStyles.textStyle33)
                          ],
                        )
                      ],
                    ),

                    SizedBox(
                      height: context.heightPct(.025),
                    ),

                    Row(
                      children: <Widget>[
                        Spacer(),
                        Column(
                          children: <Widget>[
                            // Toplam (KDV Hariç)
                            Text("Toplam (KDV Hariç)",
                                style: TextStyles.textStyle6),
                            // 150.00 TL
                            Text("150.00 TL", style: TextStyles.textStyle36)
                          ],
                        )
                      ],
                    ),

                    SizedBox(
                      height: context.heightPct(.025),
                    ),
                    Opacity(
                      opacity: 0,
                      child: Row(
                        children: <Widget>[
                          Spacer(),
                          Flexible(
                              child: CustomRoundButton(
                                  name: "Devam", onPressed: () {}))
                          //continue
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: context.heightPct(.025 / 2),
            ),

            //Payment by bank transfer
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogWidget();
                          });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(26)),
                          color: ColorsCustom.velvet
                          /*gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[colorButtonGradient1, colorButtonGradient2],
          ),*/
                          ),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: <Widget>[
                          // Banka Havalesi ile Ö
                          Text("Banka Havalesi ile Öde",
                              style: TextStyles.textStyle16),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/images/svg/forward.svg",
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.heightPct(.025 / 2),
            ),
            //Payment by creditCard
            Row(
              children: <Widget>[
                Flexible(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CreditCardDialogWidget();
                          });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(26)),
                          color: ColorsCustom.velvet
                          /*gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[colorButtonGradient1, colorButtonGradient2],
          ),*/
                          ),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: <Widget>[
                          // Banka Havalesi ile Ö
                          // Kredi Kartı İle Güve
                          Text("Kredi Kartı İle Güvenli Öde",
                              style: TextStyles.textStyle16),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/images/svg/forward.svg",
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
