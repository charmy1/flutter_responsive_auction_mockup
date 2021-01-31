import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../size_config.dart';

class DetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 1.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Lot 1",
              style: TextStyles.textStyle5.copyWith(
                  fontWeight: FontWeight.w600, color: ColorsCustom.colorBlack)),
          // Selim Turan (1915 -
          Text("Selim Turan (1915 - 1994)",
              style: TextStyles.textStyle23.copyWith(
                  fontWeight: FontWeight.w600, color: ColorsCustom.colorBlack)),
          // Soyut Kompozisyon
          Text("Soyut Kompozisyon",
              style: TextStyles.textStyle13.copyWith(
                  fontWeight: FontWeight.w600, color: ColorsCustom.colorBlack)),
          // Kağıt üzerine karışı
          Text("Kağıt üzerine karışık teknik, imzalı 12x20cm",
              style: TextStyles.textStyle24),

          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/svg/dropdowncircle.svg",
                width: 20,
                height: 20,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier,
              ),
              Text("Eser Detay ",
                  style: TextStyles.textStyle5.copyWith(
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: ColorsCustom.colorBlack))
            ],
          ),

          SizedBox(
            height: SizeConfig.heightMultiplier * 1.5,
          ),

          Container(
            decoration: BoxDecoration(
                border: Border.all(color: ColorsCustom.colorGrey, width: 1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("5.400 TL",
                      textAlign: TextAlign.end,
                      style: TextStyles.textStyle39
                          .copyWith(color: ColorsCustom.colorBlack)),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Tooltip(
                          message: "Text",
                          child: Icon(
                            Icons.info,
                            color: Colors.black,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "KDV ve Komisyon Dahil:6.818,04 TL ",
                            textAlign: TextAlign.end,
                            style: TextStyles.textStyle18,
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: SizeConfig.heightMultiplier,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffeeeeeee),
                    border: Border.all(
                      color: ColorsCustom.colorGrey,
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text("MÜZAYEDE BİTMİŞTİR",
                        style: TextStyles.textStyle49_white
                            .copyWith(color: ColorsCustom.colorBlack)),
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Teklifler: 38",
                          style: TextStyles.textStyle11.copyWith(height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: SizeConfig.heightMultiplier / 3),
                                child: SvgPicture.asset(
                                  "assets/images/svg/payment.svg",
                                  width: 5 * SizeConfig.widthMultiplier,
                                  height: 3 * SizeConfig.heightMultiplier,
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier,
                              ),
                              SvgPicture.asset(
                                "assets/images/svg/truck.svg",
                                width: 5 * SizeConfig.widthMultiplier,
                                height: 3 * SizeConfig.heightMultiplier,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),
          Row(
            children: [
              Tooltip(
                message: "Text",
                child: Icon(
                  Icons.info,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: Text(
                    "Güncel Değer Ortalaması : 6.000 TL - 9.000 TL",
                    style: TextStyles.textStyle24,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),
          Row(
            children: <Widget>[
              Flexible(
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Müzayede Bitiş:  18.07.2020 14:00 3+1 dk",
                        style: TextStyles.textStyle24,
                      ))),
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),
          // Açılış Fiyatı: 1.500
          FittedBox(
              child: Text(
            "Açılış Fiyatı:1.500 TL ",
            style: TextStyles.textStyle24,
          )),
          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                    "Bu müzayede eserine son 3 dakika içinde gelen ilk teklif belirlenmiş biriş süresine 3 dakika ilave edilir. İlk tekliften son 1 dakika içinde gelen teklifler için belirlenmiş bitiş süresine 1 dakika ilave edilir.",
                    style: TextStyles.textStyle57,
                    textAlign: TextAlign.left),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),
        ],
      ),
    );
  }
}
