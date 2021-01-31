import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../size_config.dart';

class EachMemberType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Text("Standart Üye", style: TextStyles.textStyle39),

            SvgPicture.asset(
              "assets/images/svg/medal.svg",
              color: ColorsCustom.velvet,
            ),

           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               SvgPicture.asset(
                 "assets/images/svg/correct.svg",
               ),
               SizedBox(
                 width: SizeConfig.widthMultiplier * 1.5,
               ),
               Flexible(
                 child: // Sabit Fiyatlı Ürün S
                 Text("Sabit Fiyatlı Ürün Satın Alma",
                     style: TextStyles.textStyle24),
               )
             ],
           ),

           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               SvgPicture.asset(
                 "assets/images/svg/incorrect.svg",
               ),
               SizedBox(
                 width: SizeConfig.widthMultiplier * 1.5,
               ),
               Flexible(
                 child: // Sabit Fiyatlı Ürün S
                 // Müzayedelere Teklif
                 Text("Müzayedelere Teklif Verme",
                     style: TextStyles.textStyle24),
               )
             ],
           ),

           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               SvgPicture.asset(
                 "assets/images/svg/incorrect.svg",
               ),
               SizedBox(
                 width: SizeConfig.widthMultiplier * 1.5,
               ),
               Flexible(
                 child: RichText(
                     text: TextSpan(children: [
                       TextSpan(
                           style: TextStyles.textStyle24,
                           text: "Müzayede Limiti: "),
                       TextSpan(style: TextStyles.textStyle25, text: "0 TL")
                     ])),
               )
             ],
           ),

           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               SvgPicture.asset(
                 "assets/images/svg/incorrect.svg",
               ),
               SizedBox(
                 width: SizeConfig.widthMultiplier * 1.5,
               ),
               Flexible(
                   child: // Sabit Fiyatlı Ürün S
                   // Kargo İndirimi: %0
                   RichText(
                       text: TextSpan(children: [
                         TextSpan(
                             style: TextStyles.textStyle24, text: "Kargo İndirimi: "),
                         TextSpan(style: TextStyles.textStyle25, text: "%0")
                       ])))
             ],
           )
          ],
        ),
      ),
    );
  }
}




class EachMemberType1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Text("Standart Üye", style: TextStyles.textStyle39),

            SvgPicture.asset(
              "assets/images/svg/medal.svg",
              color: ColorsCustom.velvet,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/images/svg/correct.svg",
                ),

                Flexible(
                  child: // Sabit Fiyatlı Ürün S
                  Text("Sabit Fiyatlı Ürün Satın Alma",
                      style: TextStyles.textStyle24),
                )
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/images/svg/incorrect.svg",
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 1.5,
                ),
                Flexible(
                  child: // Sabit Fiyatlı Ürün S
                  // Müzayedelere Teklif
                  Text("Müzayedelere Teklif Verme",
                      style: TextStyles.textStyle24),
                )
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/images/svg/incorrect.svg",
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 1.5,
                ),
                Flexible(
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            style: TextStyles.textStyle24,
                            text: "Müzayede Limiti: "),
                        TextSpan(style: TextStyles.textStyle25, text: "0 TL")
                      ])),
                )
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/images/svg/incorrect.svg",
                ),

                Flexible(
                    child: // Sabit Fiyatlı Ürün S
                    // Kargo İndirimi: %0
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              style: TextStyles.textStyle24, text: "Kargo İndirimi: "),
                          TextSpan(style: TextStyles.textStyle25, text: "%0")
                        ])))
              ],
            )
          ],
        ),
      ),
    );
  }
}