import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';

class NumberCartProgressIndicator extends StatelessWidget {
  final String stepNumber;
  final String stepDescription;
  final Color color;
  final bool done;
  final bool init;


  const NumberCartProgressIndicator(
      {Key key, this.stepNumber, this.stepDescription, this.color, this.done, this.init})
      : super(key: key);

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        (!done || done==null) ? Container(
          width: 24,
          height: 24,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: (!init)?ColorsCustom.steel_grey:ColorsCustom.velvet),
          child: Center(
            child: Text(
              stepNumber,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ):  SvgPicture.asset(
          "assets/images/svg/correct_radio.svg",
        ),
        // Özet
        SizedBox(
          width: context.widthPct(.01),
        ),
         Text(stepDescription,
                style: TextStyles.textStyle56)
           ,
        Spacer()
      ],
    );
  }
}
