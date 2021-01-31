import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/choice_chip.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';

class MyAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.named("profileNav").pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsCustom.steel_grey,
            ),
          ),
          centerTitle: true,
          title: Text("Adreslerim",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        floatingActionButton: GestureDetector(
          /*onTap: () =>ExtendedNavigator.named("nestedNav")
            .pushNamed(NestedRoutes.addBook),*/ //
          child: Container(
            child: SvgPicture.asset("assets/images/svg/newflat.svg"),
          ),
        ),
        body: Container(
            decoration: boxShadowDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: context.heightPct(.025),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: new BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(18.5)),
                      child: ChoiceChipCustom(
                        enableShape: true,
                        buttonColor: ColorsCustom.velvet,
                        active: TextStyles.textStyle16,
                        inactive:TextStyles.textStyle7 ,
                        buttonLables: [
                          "Teslimat Adreslerim",
                          "Fatura Adreslerim",
                        ],
                        buttonValues: [
                          "My Delivery Addresses",
                          "My Invoice Addresses",
                        ],
                        radioButtonValue: (value) => print(value),
                        selectedColor: Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.heightPct(.025 * 2),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Ev Adresim
                          Text("Ev Adresim", style: TextStyles.textStyle14),
                          Divider(
                            color: ColorsCustom.silver,
                          ),

                          Text("User Name", style: TextStyles.textStyle18),
                          Text("Address line 1"),
                          Text("Address line 2"),
                          SizedBox(
                            height: context.heightPct(.025),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  child: CustomFlatButtonTransparent(
                                name: "Güncelle",
                                color: ColorsCustom.velvet,
                              )),
                              Expanded(
                                  child: CustomFlatButtonTransparent(
                                name: "Sil",
                                color: ColorsCustom.coral,
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
