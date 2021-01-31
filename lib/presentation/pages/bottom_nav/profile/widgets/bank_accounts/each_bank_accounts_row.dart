

import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';
class EachBankAccountsRow extends StatelessWidget {

  final String sK;
  final int hNo;
  final String iban;

  const EachBankAccountsRow({Key key, this.sK, this.hNo, this.iban}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,


        children: <Widget>[
          // Hesap Sahibi Ünvanı
          /*Text(
              "Banka Hesapları",
              style: TextStyles.textStyle14
          ),*/
          SizedBox(
            height: context.heightPct(.025 ),
          ),
          Text(
              "Garanti Bankası",
              style: TextStyles.textStyle21
          ),
          // Şube Kodu: 132 (Nişa
          RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyles.textStyle20,
                        text: "Şube Kodu: "),
                    TextSpan(
                        style: TextStyles.textStyle5,
                        text: "132 (Nişantaşı Şubesi)")
                  ]
              )
          ),
          // Hesap No: 6298608
          RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyles.textStyle20,
                        text: "Hesap No: "),
                    TextSpan(
                        style: TextStyles.textStyle5,
                        text: "6298608")
                  ]
              )
          ),// IBAN: TR19 0006 2000
          RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyles.textStyle20,
                        text: "IBAN: "),
                    TextSpan(
                        style: TextStyles.textStyle5,
                        text: "TR19 0006 2000 1320 0006 2986 08")
                  ]
              )
          ),
          Divider(color: ColorsCustom.silver,)
        ],
      ),
    );
  }
}





