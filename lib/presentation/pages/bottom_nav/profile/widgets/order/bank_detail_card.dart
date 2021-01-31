
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';
class BankDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        // Havale Miktarı
        Text(
            "Havale Miktarı",
            style: TextStyles.textStyle14
        ),
        // 9.595,76 TL
        Text(
            "9.595,76 TL",
            style: TextStyles.textStyle21
        ),
        SizedBox(height: context.heightPct(.025*2),),
        // Hesap Sahibi Ünvanı
        Text(
            "Hesap Sahibi Ünvanı",
            style: TextStyles.textStyle14
        ),
        //  Antik ve Sanat
        Text(
            " Antik ve Sanatsal Eserler Müzayede Organizasyonları Ticaret A.Ş.",
            style: TextStyles.textStyle18
        ),
        Divider(thickness: 2,color: ColorsCustom.silver,),
        SizedBox(height: context.heightPct(.025),),
        // Banka Hesapları
        Text(
            "Banka Hesapları",
            style: TextStyles.textStyle14
        ),

        SizedBox(height: context.heightPct(.025*2),),
        // Garanti Bankası
        EachBank(),
        EachBank(),
        EachBank(),
      


      ],
    );
  }
}


class EachBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
        Divider(thickness: 2,color: ColorsCustom.silver,),
        SizedBox(height: context.heightPct(.025),)
      ],
    );
  }
}
