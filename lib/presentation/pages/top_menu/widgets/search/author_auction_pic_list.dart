import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:sized_context/sized_context.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../size_config.dart';

//will change from network add const arg constructor
/*
class AuthorAuctionPicList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              width: 60 * SizeConfig.widthMultiplier,
              child: Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          //height: context.heightPct(.35*.5),
                          width: context.widthPx,
                          //color: Colors.grey,
                          child: Image.asset("assets/static/banner5.jpg",
                              fit: BoxFit.fill),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Figüratif Kompozisyo
                            Text("Figüratif Kompozisyon",
                                style: TextStyles.textStyle5),
                            // 347. Müzayede | ONLI
                            // 11.363,40 TL
                            Text("11.363,40 TL", style: TextStyles.textStyle31),
                            // 9 - 18 Temmuz
                            // Teklifler: 1
                            Text("Teklifler: 1", style: TextStyles.textStyle6)
                          ],
                        ),
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
*/

/*
class AuthorAuctionPicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TabletViewWidget(
        mobileLayout: AuthorPicListPortrait(),
        tabletLayout:
        AuthorPicListPortrait(),
      ),
    );
  }
}
*/

class AuthorAuctionPicList extends StatelessWidget {
  final controller = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: SizeConfig.heightMultiplier * 50,
          child: PageView(
            controller: controller,
            children: List.generate(
                6,
                (_) => EachListItem()),
          ),
        ),
        //SizedBox(height: 16),
        Container(
          child: SmoothPageIndicator(
            controller: controller,
            count: 6,
            effect: ExpandingDotsEffect(
                expansionFactor: 4,
                activeDotColor: ColorsCustom.velvet,
                dotColor: ColorsCustom.steel_grey,
                dotHeight: 6,
                dotWidth: 6),
          ),
        ),
      ],
    );
  }
}



class EachListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 60 * SizeConfig.widthMultiplier,
      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              // padding: EdgeInsets.all(8),
              //height: context.heightPct(.35*.5),
              width: context.widthPx,
              //color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xffeeeeeee),
                  border: Border.all(
                    color: ColorsCustom.colorGrey,
                  ),
                ),
                padding: EdgeInsets.all(8),
                child: Image.asset("assets/static/banner5.jpg",
                    fit: BoxFit.fitHeight),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Figüratif Kompozisyo

                FittedBox(
                  child: Text("Figüratif Kompozisyon",
                      style: TextStyles.textStyle5),
                ),
                // 347. Müzayede | ONLI
                // 11.363,40 TL
                FittedBox(
                  child: Text("11.363,40 TL",
                      style: TextStyles.textStyle31),
                ),
                // 9 - 18 Temmuz
                // Teklifler: 1
                FittedBox(
                  child: Text("Teklifler: 1",
                      style: TextStyles.textStyle6),
                ),

                SizedBox(height: SizeConfig.heightMultiplier,),
              ],
            ),
          )
        ],
      ),
    );
  }
}



