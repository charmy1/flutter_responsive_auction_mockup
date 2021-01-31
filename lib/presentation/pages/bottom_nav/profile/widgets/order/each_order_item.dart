import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';
class EachOrderItem extends StatelessWidget {

  final String title;
  final String description;

  const EachOrderItem({Key key, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Sipariş Kodu
        Text(
            title,
            style: TextStyles.textStyle14
        ),
        // 1086
        Text(
            description,
            style: TextStyles.textStyle18
        ),
        SizedBox(height: context.heightPct(.025),)
      ],
    );
  }
}