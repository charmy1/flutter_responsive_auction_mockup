import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';

class OrderDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            // Rectangle
            Container(
              color: Colors.grey,
              width: 120,
              height: 74,
              child: Image.asset("assets/static/banner5.jpg",
                  fit: BoxFit.fill),
            ),
            Divider(
              thickness: 2,
              color: ColorsCustom.silver,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Lot 1
                Text("Lot 1", style: TextStyles.textStyle5),
                // Selim Turan (1915 -
                Text("Selim Turan (1915 - 1994)",
                    style: TextStyles.textStyle23),
                // Miktarı: 1
                RichText(
                    text: TextSpan(children: [
                  TextSpan(style: TextStyles.textStyle55, text: "Miktarı: "),
                  TextSpan(
                    style: TextStyles.textStyle13,
                  )
                ])),
                // Birim Fiyatı: 7.600,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      style: TextStyles.textStyle25, text: "Birim Fiyatı: "),
                  TextSpan(style: TextStyles.textStyle24, text: "7.600,00 TL")
                ])),
                // Toplam Fiyat: 7.600,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      style: TextStyles.textStyle25, text: "Toplam Fiyat: "),
                  TextSpan(style: TextStyles.textStyle24, text: "7.600,00 TL")
                ])),
                Divider(
                  thickness: 2,
                  color: ColorsCustom.silver,
                ),
                SizedBox(
                  height: context.heightPct(.025),
                ),
                // Ürün Toplam (Vergi H
                Text("Ürün Toplam (Vergi Hariç)",
                    style: TextStyles.textStyle14),
                // 7.600,00 TL
                Text("7.600,00 TL", style: TextStyles.textStyle18),
                SizedBox(
                  height: context.heightPct(.025),
                ),
                // Alıcı Komisyon + KDV
                Text("Alıcı Komisyon + KDV", style: TextStyles.textStyle14),
                // 1.995,76 TL
                Text("1.995,76 TL", style: TextStyles.textStyle18),
                SizedBox(
                  height: context.heightPct(.025),
                ),
                // Kargo
                Text("Kargo", style: TextStyles.textStyle14),
                // 0,00 TL
                Text("0,00 TL", style: TextStyles.textStyle18),
                SizedBox(
                  height: context.heightPct(.025),
                ),
                // Toplam Tutar
                Text("Toplam Tutar", style: TextStyles.textStyle14),
                // 9.595,76 TL
                Text("9.595,76 TL", style: TextStyles.textStyle21),
                SizedBox(
                  height: context.heightPct(.025 * 2),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
