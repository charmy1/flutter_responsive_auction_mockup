import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';

class DialogWidget extends StatelessWidget {
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
                  Text("Banka Havalesi İle Ödeme", style: TextStyles.textStyle4),
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
                height: dialogContext.heightPct(.025),
              ),
              // Siz banka havalesi i
              Text(
                  "Siz banka havalesi ile ödeme seçtiniz. Siparişinizin kısa bir özetidir:",
                  style: TextStyles.textStyle5),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              Text("Sipariş toplam miktarı 150,00 TL (Vergi Dahil)",
                  style: TextStyles.textStyle5),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              Text("Banka hesap bilgileri sonraki sayfada görünecektir.",
                  style: TextStyles.textStyle5),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              Text(
                  "Lütfen ‘Siparişimi Onaylıyorum butonuna tıklayın ve siparişinizi onaylayın.",
                  style: TextStyles.textStyle5),
              SizedBox(
                height: dialogContext.heightPct(.025),
              ),
              Row(
                children: <Widget>[
                  Expanded(child: CustomRoundButton(
                    name: "Siparişimi Onaylıyorum",
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}