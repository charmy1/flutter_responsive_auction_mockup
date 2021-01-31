import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;
  static bool isTabPortrait = true;
  static bool isMobilePortrait = false;
  static bool isTabletLandscape = false;
  static bool tabFlag=false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      isTabletLandscape = false;
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isTabPortrait = true;
      //  print("width in potrtrat" + _screenWidth.toString());
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }



      if(_screenWidth>450 && _screenWidth<600)///smaller tabs in potrait should not show side by side view
      {

        print("tablet is in potrait ");
        tabFlag=true;
      }


    } else {

      tabFlag=false;
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isTabPortrait = false;
      isMobilePortrait = false;

      if (_screenWidth > 450) {
        isTabletLandscape = true; //i.e it a tablet
      }



      ///side by side  view for author profile
      ///lib/presentation/widgets/core/author_common/author_work_detail.dart
      ///AuthorWorkDetailWidget
      ///AuthorCard


    }

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;

    //print("Block Height" + _blockHeight.toString());

    //print("Block Width " + _blockWidth.toString());

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
  }
}
