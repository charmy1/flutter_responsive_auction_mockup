import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';

class ColorsCustom {
  static const velvet = const Color(0xff660960);
  static const gunmetal = const Color(0xff4b515c);
  static const silver = const Color(0xffd9dee1);

//from web
  static const colorBlack=const Color(0xff212529);
 static const colorGrey =const Color(0xffced4da);
  static const colorGreyText =const Color(0xff495057);
  //
  //static const bg = const Color(0xffb19cd9);

  static const tomato = const Color(0xffec3831);
  static const bg = const Color(0xff660960);
  static const white = const Color(0xfffafafa);
  static const black_50 = const Color(0x81000000);
  static const watermelon = const Color(0xfff25360);
  static const steel_grey = const Color(0xff7b848a);
  static const black_6 = const Color(0x0f000000);
  static const light_blue_grey = const Color(0xffcedce5);
  static const coral = const Color(0xfffc4842);
  static const orange_yellow = const Color(0xfffda702);
  static const charcoal_grey = const Color(0xff454647);
  static const dusty_orange = const Color(0xffe67e21);
  static const green = Color(0xff48c657);
  static const white_two = const Color(0xfff7f7f7);
}

class TextStyles {
//===========================================================================

//11
  static final textStyle32 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 1.6 * SizeConfig.textMultiplier);

  static final textStyleBottomNav = TextStyle(
      // color:  const Color(0xff7b848a),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 1.6 * SizeConfig.textMultiplier);

  //===========================================================================
  //12

  static final textStyle27 = TextStyle(
      color: ColorsCustom.steel_grey,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier);

  static final textStyle53 = textStyle27.copyWith(color: Colors.white);

  static final textStyle50 = TextStyle(
      color: const Color(0xff99949d),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier);
  static final textStyle10 = TextStyle(
      color: const Color(0xffe94d48),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier);

  static final textStyle57 = textStyle10.copyWith(color: ColorsCustom.coral);

  static final textStyle11 = TextStyle(
      color: ColorsCustom.steel_grey,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier);

  static final textStyle15 = TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier);

  static final textStyle47 = TextStyle(
      color: const Color(0xff99949d),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier //12
      );

  static final textStyle38 = TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier); //12
  static final textStyle37 = TextStyle(
      color: ColorsCustom.light_blue_grey,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier); //12

  static final textStyle34 = TextStyle(
      color: const Color(0xffec3831),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier); //12

  static final textStyle35 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier); //12

  static final textStyle17 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier); //12

  static final textStyle25 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier);

  static final textStyle24 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 1.8 * SizeConfig.textMultiplier);

//==============================================================================

  //13
  static final textStyle13 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 1.89 * SizeConfig.textMultiplier);

  static final textStyle54 = textStyle13.copyWith(color: ColorsCustom.velvet);

  static final textStyle6 = TextStyle(
      color: ColorsCustom.steel_grey,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 1.89 * SizeConfig.textMultiplier);
  static final textStyle31 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 1.89 * SizeConfig.textMultiplier);

  static final textStyle55 = textStyle31.copyWith(color: Color(0xff000000));

//===============================================================================
  //14
  static final textStyle33 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2 * SizeConfig.textMultiplier);

  static final textStyle23 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2 * SizeConfig.textMultiplier);

  static final textStyle48 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 2 * SizeConfig.textMultiplier);

  static final textStyle56 = textStyle48.copyWith(color: Color(0xd6000000));

  //===========================================================================

  //15
  static final textStyle19 = TextStyle(
      color: ColorsCustom.coral,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier);

  static final textStyle20 = TextStyle(
      color: ColorsCustom.steel_grey,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier);
  static final textStyle7 = TextStyle(
      color: ColorsCustom.steel_grey,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier);

  static final textStyle5 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier);

  static final textStyle44 = TextStyle(
      color: ColorsCustom.gunmetal,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier //15
      );

  static final textStyle45 = TextStyle(
      color: ColorsCustom.gunmetal,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier //15
      );

  static final textStyle39 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier); //15

  static final textStyle21 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier);

  static final textStyle14 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier);

  static final textStyle16 = TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier);

  static final textStyle18 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier);

//===========================================================
//17

  static final textStyle = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2.45 * SizeConfig.textMultiplier); //17

  static final textStyle30 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.45 * SizeConfig.textMultiplier);
  static final textStyle2 = TextStyle(
      color: ColorsCustom.gunmetal,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.45 * SizeConfig.textMultiplier);

  static final textStyle3 = TextStyle(
      color: ColorsCustom.watermelon,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.45 * SizeConfig.textMultiplier);

  static final textStyle12 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.45 * SizeConfig.textMultiplier);

  static const textStyle49_white = const TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w700,
      fontFamily: "SFProDisplay",
      fontStyle: FontStyle.normal,
      fontSize: 17.0);

  //============================================================
//20
  static final textStyle4 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.9 * SizeConfig.textMultiplier);

  static final textStyle28 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.9 * SizeConfig.textMultiplier);

  static final textStyle8 = TextStyle(
      color: ColorsCustom.steel_grey,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 2.9 * SizeConfig.textMultiplier);

  static final textStyle49 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2.9 * SizeConfig.textMultiplier);

//================================================================================

  //22
  static final textStyle26 = TextStyle(
      color: const Color(0xfff73857),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: SizeConfig.textMultiplier * 3.2);

  static final textStyle26_1 = TextStyle(
      color: const Color(0xfff73857),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: SizeConfig.textMultiplier * 4);
  static final textStyle22 = TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: SizeConfig.textMultiplier * 3.2);

  static final textStyle43 = TextStyle(
      color: const Color(0xff000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: SizeConfig.textMultiplier * 3.2 //22
      );

  static final textStyle46 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2.15 * SizeConfig.textMultiplier //22
      );

  static final textStyle29 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: SizeConfig.textMultiplier * 3.2);

  static final textStyle29_1 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: SizeConfig.textMultiplier * 4);

  //============================================================================
  static final textStyle9 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 3.46 * SizeConfig.textMultiplier); //24

  static final textStyle36 = TextStyle(
      color: const Color(0xfff73857),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 3.6 * SizeConfig.textMultiplier); //25

///////////////////////18
  static final textStyle51 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 2.6 * SizeConfig.textMultiplier); //18

  static final textStyle52 = TextStyle(
      color: ColorsCustom.velvet,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 18.0); //18

}

const inputDecorationUnderLine = const InputDecoration(
    // fillColor: Colors.grey,
    hintStyle: TextStyle(color: Colors.white, fontFamily: "hn", fontSize: 16),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusColor: Colors.white); //sign in decoration

const inputDecorationCircularLine = const InputDecoration(
    // fillColor: Colors.grey,
    filled: true,
    fillColor: Colors.white,
    hintStyle:
        TextStyle(color: ColorsCustom.gunmetal, fontFamily: "hn", fontSize: 13),
    enabledBorder: UnderlineInputBorder(
      borderRadius: const BorderRadius.all(
        const Radius.circular(22.0),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusColor: Colors.white); //sign in decoration

const inputDecorationCircularLeft = const InputDecoration(
    // fillColor: Colors.grey,
    filled: true,
    fillColor: Colors.white,
    hintStyle:
        TextStyle(color: ColorsCustom.gunmetal, fontFamily: "hn", fontSize: 13),
    enabledBorder: UnderlineInputBorder(
      borderRadius: const BorderRadius.only(
        topLeft: const Radius.circular(22.0),
        bottomLeft: const Radius.circular(22.0),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    suffixIcon: Icon(
      Icons.arrow_drop_down,
      color: Colors.black,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusColor: Colors.white);
const inputDecorationCircularRight = const InputDecoration(
    // fillColor: Colors.grey,
    filled: true,
    fillColor: Colors.white,
    hintStyle:
        TextStyle(color: ColorsCustom.gunmetal, fontFamily: "hn", fontSize: 13),
    enabledBorder: UnderlineInputBorder(
      borderRadius: const BorderRadius.only(
        topRight: const Radius.circular(22.0),
        bottomRight: const Radius.circular(22.0),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    suffixIcon: Icon(
      Icons.arrow_drop_down,
      color: Colors.black,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusColor: Colors.white);
//sign in decoration

const inputDecorationFilled = const InputDecoration(
    prefixStyle:
        TextStyle(color: ColorsCustom.gunmetal, fontFamily: "hn", fontSize: 16),
    fillColor: Colors.white,
    filled: true,
    hintStyle:
        TextStyle(color: ColorsCustom.gunmetal, fontFamily: "hn", fontSize: 16),
    border: OutlineInputBorder(
        borderSide: BorderSide(
      color: Colors.transparent,
    )),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: ColorsCustom.silver)),
    focusColor: ColorsCustom.silver); //for signup form

const inputDecorationNumber = const InputDecoration(
    prefixStyle: TextStyle(color: ColorsCustom.gunmetal, fontSize: 13),
    contentPadding: EdgeInsets.all(0),
    counterText: "",
    //  fillColor: colorFilled,
    //  filled: true,
    hintStyle: TextStyle(color: ColorsCustom.gunmetal, fontSize: 13),
    border: OutlineInputBorder(
        borderSide: BorderSide(
      color: ColorsCustom.silver,
    )),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorsCustom.silver,
      ),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
      color: ColorsCustom.silver,
    )),
    focusColor: ColorsCustom.silver); //for signup form

//todo create seperate file

const boxShadowDecoration = BoxDecoration(
  boxShadow: [
    BoxShadow(
        color: ColorsCustom.black_6,
        offset: Offset(0, 10),
        blurRadius: 10,
        spreadRadius: 0)
  ],
);

final formDecoration = InputDecoration(
    hintText: "Name",
    fillColor: Colors.white,
    filled: true,
    hintStyle: TextStyles.textStyle13,
    border: OutlineInputBorder(
        borderSide: BorderSide(
      color: ColorsCustom.colorGrey,//ColorsCustom.light_blue_grey,
    )),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color:ColorsCustom.colorGrey,//ColorsCustom.light_blue_grey,
      ),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorsCustom.colorGrey)),
    focusColor: ColorsCustom.colorGrey);
