import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';

import '../../../../size_config.dart';
import '../../CustomFlatButton.dart';
import '../../border_image.dart';
import '../author_work_detail.dart';
import 'arrow_page_indicator.dart';
import 'detail_card.dart';

class AuthorWorkDetailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabletViewWidget1(
      mobileLayout: AuthorDetailMobile(),
      tabletLayout: AuthorWorkDetailTablet(),
    );
  }
}

class AuthorDetailMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BorderWidget(
          widget: ArrowPageIndicator(),
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: CustomFlatButton(
                color: ColorsCustom.velvet,
                onPressed: () => ExtendedNavigator.root.pop(),
                name: "GERI DÖN ",
                style: TextStyles.textStyle49_white
                    .copyWith(fontSize: 1.8 * SizeConfig.textMultiplier),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 1.5 * SizeConfig.heightMultiplier,
              horizontal: 1.5 * SizeConfig.widthMultiplier),
          child: DetailCard(),
        ),
      ],
    );
  }
}

class AuthorWorkDetailTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: BorderWidget(
            widget: ArrowPageIndicator(),
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomFlatButton(
                      color: ColorsCustom.velvet,
                      onPressed: () => ExtendedNavigator.root.pop(),
                      name: "GERI DÖN ",
                      style: TextStyles.textStyle49_white
                          .copyWith(fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 1.5 * SizeConfig.heightMultiplier,
                    horizontal: 1.5 * SizeConfig.widthMultiplier),
                child: DetailCard(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
