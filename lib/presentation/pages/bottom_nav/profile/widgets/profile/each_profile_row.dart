import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';
class EachProfileRow extends StatelessWidget {


  final String assetName;
  final String profileItemName;
  final GestureTapCallback onTap;

  const EachProfileRow({Key key, this.assetName, this.profileItemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsCustom.silver),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                assetName,
              ),
              SizedBox(width: context.widthPct(.1),),
              // Kişisel Bilgilerim
              Text(profileItemName, style: TextStyles.textStyle7),
              Spacer(),
              SvgPicture.asset(
                "assets/images/svg/forward.svg",
              ),
            ],
          )
        ),
      ),
    );
  }
}



class EachProfileRowDetail extends StatelessWidget {
  final String assetName;
  final String profileItemName;
  final GestureTapCallback onTap;

  const EachProfileRowDetail({Key key, this.assetName, this.profileItemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsCustom.silver),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SvgPicture.asset(
                      assetName,
                    ),
                    SizedBox(width: context.widthPct(.1),),
                    // Kişisel Bilgilerim
                    Text(profileItemName, style: TextStyles.textStyle7),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/images/svg/forward.svg",
                    ),
                  ],
                ),
                SizedBox(height:context.heightPct(0.01)),
                // Müzayedelerimize bu
                Text(
                    "Müzayedelerimize bu üyelik tipi ile teklif veremezsiniz.",
                    style: TextStyles.textStyle10,
                    textAlign: TextAlign.center
                ),
                SizedBox(height: context.heightPct(0.01),),
                Row(
                  children: <Widget>[
                    // Müzayede Limiti: 0 T
                    Text(
                        "Müzayede Limiti: 0 TL",
                        style: TextStyles.textStyle11
                    ),
                    Spacer(),
                    // Kargo İndirimi: %0
                    Text(
                        "Kargo İndirimi: %0",
                        style: TextStyles.textStyle11
                    )
                  ],

                )
              ],
            )
        ),
      ),
    );
  }
}