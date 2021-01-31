import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:sized_context/sized_context.dart';

class AntiquePublications extends StatelessWidget {
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
          title: Text("Antik A.Ş. Yayınları",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Container(
          decoration: boxShadowDecoration,
          child: SingleChildScrollView(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(height: context.heightPct(.4),
                    width: context.widthPx,
                      child: Image.asset("assets/static/global-art-design.jpg",
                          fit: BoxFit.fill
                      ),
                    color: Colors.grey,),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),

                    Text(" Global Art & Design",
                        style: TextStyles.textStyle5),
                    // 25.00 TL

                    Text(
                        " yayınlarını .com dışında Antik A.Ş. merkez binasından da temin edebilirsiniz.",
                        style: TextStyles.textStyle6),
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Expanded(
                            child: CustomRoundButton(
                          name: "Detay",
                          onPressed: () {},
                        ) //Product details,
                            )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
