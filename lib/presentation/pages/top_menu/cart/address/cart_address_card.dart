import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/custom_drop_down.dart';
import 'package:sized_context/sized_context.dart';

class CartAddressCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Bir teslimat adresi
        Text(
          "Bir teslimat adresi seçiniz:",
          style: TextStyles.textStyle14,
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: context.heightPct(.01),
        ),
        CustomDropDown(
          list: ['Ev Adresim', 'Ev Adresim 1', 'Ev Adresim 2'],
        ),
        SizedBox(
          height: context.heightPct(.01),
        ),
        EachAddressCart(
          title: "Teslimat Adresi",
        ),
        SizedBox(
          height: context.heightPct(.01),
        ),

        EachAddressCart(
          title: "Fatura Adresi",
        )
      ],
    );
  }
}

class EachAddressCart extends StatelessWidget {
  final String title;

  const EachAddressCart({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Teslimat Adresi
          children: <Widget>[
            Text(title, style: TextStyles.textStyle14),
            Divider(),
            Text("User Name", style: TextStyles.textStyle18),
            Text("Address line 1",
                style: TextStyles.textStyle18),
            Text("Address line 2", style: TextStyles.textStyle18),
            Text(" City", style: TextStyles.textStyle18),


          ],
        ),
      ),
    );
  }
}
