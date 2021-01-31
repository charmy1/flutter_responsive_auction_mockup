import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/profile/my_account_dialog_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/router/profile/profile_router.gr.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:sized_context/sized_context.dart';
import 'widgets/profile/each_profile_row.dart';


class ProfileHome extends StatefulWidget {
  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  void initState() {


    Future.delayed(Duration.zero, () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return MyAccountDialogWidget();
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: boxShadowDecoration,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: context.heightPct(.05),
              ),

              // Hesabım
              Text("Hesabım", style: TextStyles.textStyle8),

              Text("User Name", style: TextStyles.textStyle9),
              SizedBox(
                height: context.heightPct(.025),
              ),
              EachProfileRowDetail(
                onTap: () {
                  ExtendedNavigator.named("profileNav")
                      .push(ProfileRoutes.membershipTypes);
                },
                assetName: "assets/images/svg/certi.svg",
                profileItemName: "Standart Üye",
              ), //no onclick
              SizedBox(
                height: context.heightPct(0.025),
              ),
              EachProfileRow(
                assetName: "assets/images/svg/profile_each_row.svg",
                profileItemName: "Kişisel Bilgilerim",
                onTap: () {
                  ExtendedNavigator.named("profileNav")
                      .push(ProfileRoutes.myPersonalInformation);
                },
              ), //MYPersonalInfomation
              SizedBox(
                height: context.heightPct(0.025),
              ),
              EachProfileRow(
                assetName: "assets/images/svg/pin.svg",
                profileItemName: "Adreslerim",
                onTap: () {
                  ExtendedNavigator.named("profileNav")
                      .push(ProfileRoutes.myAddress);
                },
              ), //MyAddress
              SizedBox(
                height: context.heightPct(0.025),
              ),
              EachProfileRow(
                assetName: "assets/images/svg/tl.svg",
                profileItemName: "Banka Hesapları",
                onTap: () {
                  ExtendedNavigator.named("profileNav")
                      .push(ProfileRoutes.bankAccounts);
                },
              ), //BankAccounts
              SizedBox(
                height: context.heightPct(0.025),
              ),
              EachProfileRow(
                assetName: "assets/images/svg/offers_active.svg",
                profileItemName: "Müzayede Tekliflerim",
                onTap: () {
                  ExtendedNavigator.named("rootNav").push(Routes
                      .myOffersInAuction); //todo this is incorrect this page is one of the auctions bottom nav page may be not
                },
              ), //MyOffersInAuction
              SizedBox(
                height: context.heightPct(0.025),
              ),
              EachProfileRow(
                assetName: "assets/images/svg/box.svg",
                profileItemName: "Kargo Ücretleri",
                onTap: () {
                  ExtendedNavigator.named("profileNav")
                      .push(ProfileRoutes.shippingFees);
                },
              ),

              //Shipping Fees

              //SİPARİŞLERİM//orders//2.4

              SizedBox(
                height: context.heightPct(0.025),
              ),
              EachProfileRow(
                assetName: "assets/images/svg/box.svg",
                profileItemName: "Siparişlerim", //SİPARİŞLERİM
                onTap: () {
                  ExtendedNavigator.named("rootNav")
                      .push(Routes.orders);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
