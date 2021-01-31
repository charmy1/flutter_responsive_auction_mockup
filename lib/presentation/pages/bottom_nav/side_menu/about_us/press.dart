import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:sized_context/sized_context.dart';

class Press extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.named("rootNav").pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsCustom.steel_grey,
            ),
          ),
          centerTitle: true,
          title: Text("Basında Biz",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Container(
          decoration: boxShadowDecoration,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        color: Colors.grey,

                        height: SizeConfig.heightMultiplier*25,

                        child: Image.asset("assets/static/thumb.jpg",
                            fit: BoxFit.fill
                        ),
                      ),
                      SizedBox(
                        height: context.heightPct(.025),
                      ),
                    ],
                  );
                }),
          ),
        ));
  }
}
