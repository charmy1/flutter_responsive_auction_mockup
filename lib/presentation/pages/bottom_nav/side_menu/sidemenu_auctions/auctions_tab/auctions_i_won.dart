import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/choice_chip.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';
class AuctionsIWon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Rectangle
                    Container(
                        width: 42,
                        height: 53,
                        child: Image.asset("assets/static/banner5.jpg",
                            fit: BoxFit.fill
                        ),
                        //todo change width and height
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(1)))),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(style: TextStyles.textStyle5, text: "1 x "),
                          TextSpan(
                              style: TextStyles.textStyle21, text: "Ortyantalizm")
                        ])),
                    SvgPicture.asset(
                      "assets/images/svg/incorrect_b.svg",
                    ),
                  ],
                ),
                Divider(
                  color: ColorsCustom.silver,
                ),
                // Toplam Tutar
                Text("Toplam Tutar", style: TextStyles.textStyle6),
                // 150.00 TL
                Text("150.00 TL",
                    style: TextStyles.textStyle33),

                SizedBox(
                  height: context.heightPct(.025),
                ),
                CustomRoundButton(
                  name: "Ödeme Yap", //Buy on click
                  onPressed: () {
                    //ExtendedNavigator.named("rootNav").push(Routes.cartBuy);
                  },
                )
              ],
            ),
          ),
        ),
        SizedBox(height: context.heightPct(.025/2),),
        ChoiceChipCustom(
          radioButtonValue: (value) {
            /*setState(() {
              //  value=value;

              value1 = (value);
            });*/
          },
          enableShape: true,
          buttonColor: Theme.of(context).canvasColor,
          inactive: TextStyles.textStyle27,
          active: TextStyles.textStyle15,
          buttonLables: [
            "Müzayede Tekliflerim ",
            "Takip Ettiğim Eserler",
            "Kazandığım Eserler ",
          ],
          buttonValues: [
            "1",
            "2",
            "3"
            /* "Auctions My Offers",
                        "Auction I follow ",
                        "Auction I won ",*/
          ],
          selectedColor: Colors.transparent,
        ),
       Row(
         children: <Widget>[
            Expanded(child: CustomRoundButton(name: "Hepsini Öde",)),
           Expanded(child:  CustomFlatButtonTransparent(
             name: "Sepettekileri Öde",
             color: ColorsCustom.velvet,
             textStyle: TextStyles.textStyle15,
           ),),
           //Pay all
           //Pay items

         ],
       ),
        SizedBox(height: context.heightPct(.025/2),),
        Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Rectangle
                    Container(
                        color: Colors.grey,
                        width: 120,
                        height: 74,
                child: Image.asset("assets/static/banner5.jpg",
                fit: BoxFit.fill
            ),
                    ),

                  ],
                ),
                Divider(color: ColorsCustom.silver,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
                // Lot 1
                Text(
                    "Lot 1",
                    style: TextStyles.textStyle5
                ),
                // Selim Turan (1915 -
                Text(
                    "Selim Turan (1915 - 1994)",
                    style: TextStyles.textStyle23
                ),
                // 2.300 TL

              ],),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                      "2.300 TL",
                      style: TextStyles.textStyle26,

                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    Expanded(
                      child: CustomFlatButtonTransparent(color: ColorsCustom.velvet,
                        textStyle: TextStyles.textStyle15,
                        name: "Sepetten Çıkar",),
                    )///Remove from Cart
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}