import 'package:flutter/cupertino.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import '../../size_config.dart';

class BorderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 1.5 * SizeConfig.heightMultiplier,
//          horizontal: 1.5 * SizeConfig.widthMultiplier
      ),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Image.asset(
              "assets/static/banner1.jpg",
              fit: BoxFit.fitHeight,
            ),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: ColorsCustom.silver, width: 2)),
          height: 35 * SizeConfig.heightMultiplier,
          width: 100 * SizeConfig.heightMultiplier,
        ),
      ),
    );
  }
}

class BorderWidget extends StatelessWidget {
  final Widget widget;

  const BorderWidget({Key key, @required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 1.5 * SizeConfig.heightMultiplier,
          horizontal: 1.5 * SizeConfig.widthMultiplier),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 1.5 * SizeConfig.heightMultiplier,
                horizontal: 1.5 * SizeConfig.widthMultiplier),
            child: widget,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: ColorsCustom.colorGrey, width: 1)),
          // width: 100 * SizeConfig.widthMultiplier,
        ),
      ),
    );
  }
}

class BorderWidget1 extends StatelessWidget {
  final Widget widget;

  const BorderWidget1({Key key, @required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 1.5 * SizeConfig.heightMultiplier,
          horizontal: 1.5 * SizeConfig.widthMultiplier),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 1.5 * SizeConfig.heightMultiplier,
                horizontal: 1.5 * SizeConfig.widthMultiplier),
            child: widget,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: ColorsCustom.velvet, width: 1)),
          // width: 100 * SizeConfig.widthMultiplier,
        ),
      ),
    );
  }
}
