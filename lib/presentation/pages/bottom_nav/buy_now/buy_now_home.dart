import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/buy_now/widgets/buy_now_responsive.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/router/buy_now/buy_now_router.gr.dart';
import 'package:sized_context/sized_context.dart';

import '../../../size_config.dart';

class BuyNowHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxShadowDecoration,
      child: TabletViewWidget(
        mobileLayout: BuyNowMobile(
          scrollDirection: Axis.vertical,
        ),
        tabletLayout: BuyNowGrid(),
      ),
    );
  }
}
