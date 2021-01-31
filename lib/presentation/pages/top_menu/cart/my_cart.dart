import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/cart_product_card.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/choice_chip.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.root.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsCustom.steel_grey,
            ),
          ),
          actions: <Widget>[
            // oval
            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                  height: 20,
                  child: Center(
                    child: // 1
                        Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Text("1", style: TextStyles.textStyle16),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorsCustom.velvet,
                  )),
            )
          ],
          centerTitle: true,
          title: Text("Sepetim", //My Cart
              style: TextStyles.textStyle12,
              textAlign: TextAlign.center),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: context.heightPct(.025),
                      ),
                      CartProductCard(),
                      SizedBox(
                        height: context.heightPct(.025 * 2),
                      ),
                      ChoiceChipCustom(
                        radioButtonValue: (value) {
                          setState(() {
                            value = value;

                            //value1 = (value);
                          });
                        },
                        enableShape: true,
                        buttonColor: Theme.of(context).canvasColor,
                        inactive: TextStyles.textStyle27,
                        active: TextStyles.textStyle15,
                        buttonLables: [
                          "Müzayede Tekliflerim ",
                          "Takip Ettiğim Eserler",
                          "Kazandığım Eserler ",

                          ///todo add bubble counter inside the chip for auction I won
                        ],
                        buttonValues: [
                          "1",
                          "2",
                          "3"
                          /* "Auctions My Offers",
                      "Auction I follow ",
                      "Auction I won ",*/
                        ],
                        selectedColor: Colors.transparent,
                      ),
                      SizedBox(
                        height: context.heightPct(.025),
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/images/svg/offer_illus.svg",
                          ),
                          // Henüz Müzayede Tekli

                          SizedBox(
                            height: context.heightPct(.025),
                          ),
                          Text(
                            "Henüz Müzayede Teklifiniz Yok",
                            //You Have No Auctions Yet
                            style: TextStyles.textStyle7.copyWith(
                              color: const Color(0xffbbc0c3),
                            ),
                          )
                        ],
                      )),
                      //Text("Footer"),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
