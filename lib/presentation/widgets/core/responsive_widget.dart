import 'dart:math';

import 'package:flutter/material.dart';

import '../../size_config.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget portraitLayout;
  final Widget landscapeLayout;

  const ResponsiveWidget({
    Key key,
    @required this.portraitLayout,
    this.landscapeLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (SizeConfig.isTabletLandscape) {
      return landscapeLayout;
    } else {
      return portraitLayout; //mobile potrait/landscape and tablet landscape
    }
  }
}

class ResponsiveWidgetGrid extends StatelessWidget {
  final Widget portraitLayout;
  final Widget landscapeLayout;

  const ResponsiveWidgetGrid({
    Key key,
    @required this.portraitLayout,
    this.landscapeLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (SizeConfig.isMobilePortrait ||
        SizeConfig.isTabletLandscape ||
        SizeConfig.isTabPortrait) {
      return portraitLayout;
    } else {
      return landscapeLayout; //mobile potrait/landscape and tablet landscape
    }
  }
}

class TabletViewWidget extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;

  const TabletViewWidget(
      {Key key, @required this.mobileLayout, @required this.tabletLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    print("Shortest Side Dimensions" + shortestSide.toString());
    final bool isMobileLayout = shortestSide < 450; //for 7 inch 600
    ///https://developer.android.com/training/multiscreen/screensizes#TaskUseSWQuali
    ///old value 600 didn't work for   600*1024 , gave shortest side as 552  //
    ///also didnt work for   /// 1280*720
    var size = MediaQuery.of(context).size;
    var diagonal =
        sqrt((size.width * size.width) + (size.height * size.height));

    // var isMobileLayout = diagonal < 1100.0;//1100
    // diagonal value:1000   1109  emulator-AMazon firehd 8 (1280*800, )   shortest side 600 ,552
    //935                   emulator   7 inch  (720*1280  MDPI)                                     480
    // 1145 /1163          emulator  7 inch      (600 *1024  HDPI)std                          600,552
    //  894                 redmi k20      6.4 inch                                        394
    //  1054                 samsung s8                                                     480

    print("diagonal Value " + diagonal.toString());

    if (isMobileLayout) {
      return mobileLayout;
    } else {
      return tabletLayout;
    }
  }
}









///side by side  view for author profile
///lib/presentation/widgets/core/author_common/author_work_detail.dart
///AuthorWorkDetailWidget
///AuthorCard
class TabletViewWidget1 extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;

  const TabletViewWidget1(
      {Key key, @required this.mobileLayout, @required this.tabletLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var shortestSide1 = MediaQuery.of(context).size.longestSide;
    print("Shortest Side Dimensions" + shortestSide.toString());
    print("Longest Side Dimensions" + shortestSide1.toString());
    final bool isMobileLayout = shortestSide < 480; //for 7 inch 600




    ///https://developer.android.com/training/multiscreen/screensizes#TaskUseSWQuali
    ///old value 600 didn't work for   600*1024 , gave shortest side as 552  //
    ///also didnt work for   /// 1280*720
    var size = MediaQuery.of(context).size;
    var diagonal =
        sqrt((size.width * size.width) + (size.height * size.height));

    // var isMobileLayout = diagonal < 1100.0;//1100
    // diagonal value:1000   1109  emulator-AMazon firehd 8 (1280*800, )   shortest side 600 ,552           longestside
    //935                   emulator   7 inch  (720*1280  MDPI)                               480          976
    // 1145 /1163          emulator  7 inch      (600 *1024  HDPI)std                      600,552
    //  894                 redmi k20      6.4 inch                                        394
    //  1054                 samsung s8                                                    480

    print("diagonal Value " + diagonal.toString());

    if (isMobileLayout) {
      return mobileLayout;
    } else {
      return SizeConfig.tabFlag?mobileLayout:tabletLayout;
    }
  }
}
