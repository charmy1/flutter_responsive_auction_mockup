
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';
class SalesContractDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Dialog(
      //this right here
        child: Padding(
        padding: const EdgeInsets.all(12.0),
    child: SingleChildScrollView(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Kredi Kartı İle Ödem
            Text("Sales Contract", style: TextStyles.textStyle4),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                "assets/images/svg/close.svg",
              ),
            ),
          ],
        ),
        SizedBox(
          height: context.heightPct(.025 / 2),
        ),
        Text("Sales  Contract")//todo add heree

      ]),
    )));
  }
}
