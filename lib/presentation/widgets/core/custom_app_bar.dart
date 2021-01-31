import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

import '../../size_config.dart';

class CustomAppBar extends StatelessWidget {
  final Widget trailing;


  final Widget leading;

  final Widget trailing1;
  final Widget logIn;

  const CustomAppBar({
    Key key,
    this.trailing,

    this.leading,

    this.trailing1,
    this.logIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          padding: EdgeInsets.symmetric(vertical: 3* SizeConfig.heightMultiplier),
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ]),
          child:Column(
            children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 3,
                  ),
                  leading,
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 3,
                  ),
                  Spacer(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        trailing1, //search

                        trailing, //cart

                        logIn,
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),






        ),
       SizedBox(height: SizeConfig.heightMultiplier/2,)
      ],
    );
  }
}
