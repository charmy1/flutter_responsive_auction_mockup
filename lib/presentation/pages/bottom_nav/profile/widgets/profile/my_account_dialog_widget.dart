import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/custom_drop_down.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';


import '../custom_date_picker.dart';

class MyAccountDialogWidget extends StatelessWidget {
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
                  // Müzayede Aktivasyon
                  Text("Müzayede Aktivasyon", style: TextStyles.textStyle4),
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
              // 1. Adım T.C. Kimlik
              Text("1. Adım T.C. Kimlik Doğrulaması",
                  style: TextStyles.textStyle5),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              // Siz banka havalesi i

              // Kart Üzerindeki İsim

              TextFormField(
                style: TextStyles.textStyle37,
                decoration: formDecoration.copyWith(
                  hintText: "Ad",
                  hintStyle: TextStyles.textStyle37,
                ),
              ),
              SizedBox(
                height: dialogContext.heightPct(.025 / 2),
              ),
              TextFormField(
                style: TextStyles.textStyle37,
                decoration: formDecoration.copyWith(
                  hintText: "Soyadı",
                  hintStyle: TextStyles.textStyle37,
                ),
              ),
              SizedBox(
                height: dialogContext.heightPct(.025 / 2),
              ),
              TextFormField(
                style: TextStyles.textStyle37,
                decoration: formDecoration.copyWith(
                  hintText: "T.C. Kimlik No",
                  hintStyle: TextStyles.textStyle37,
                ),
              ),
              SizedBox(
                height: dialogContext.heightPct(.025 / 2),
              ),
              CustomDatePicker(label: "Doğum Yılınızı Seçiniz",textStyle:TextStyles.textStyle37 ,),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
             Row(children: <Widget>[
               Expanded(child:  CustomRoundButton(name: "Doğrula",),)
             ],)
            ],
          ),
        ),
      ),
    );
  }
}
