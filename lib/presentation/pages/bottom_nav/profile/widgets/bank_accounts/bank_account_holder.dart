import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

class BankAccountHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Hesap Sahibi Ünvanı
          Text("Hesap Sahibi Ünvanı",
              style: TextStyles.textStyle14),
          //  Antik ve Sanat
          Text(
              " Antik ve Sanatsal Eserler Müzayede Organizasyonları Ticaret A.Ş.",
              style: TextStyles.textStyle18)
        ],
      ),
    );
  }
}