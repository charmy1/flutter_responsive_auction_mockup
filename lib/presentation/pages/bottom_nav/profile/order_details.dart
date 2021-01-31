import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/order/bank_detail_card.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/order/order_detail_cart.dart';


import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/cart/address/cart_address_card.dart';
import 'package:sized_context/sized_context.dart';

class OrderDetails extends StatelessWidget {
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
        centerTitle: true,
        title: Text("Sipariş Detayı", //order details
            style: TextStyles.textStyle12,
            textAlign: TextAlign.center),
      ),
      body: Container(
          decoration: boxShadowDecoration,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              BankDetailCard(),
                              // Banka havalesi açıkl
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    style: TextStyles.textStyle31
                                        .copyWith(fontWeight: FontWeight.w400),
                                    text: "Banka havalesi açıklama kısmına "),
                                TextSpan(
                                    style: TextStyles.textStyle31
                                        .copyWith(color: Color(0xff000000)),
                                    text: "1086 "),
                                TextSpan(
                                    style: TextStyles.textStyle31
                                        .copyWith(fontWeight: FontWeight.w400),
                                    text:
                                        "sipariş referansını eklemeyi unutmayınız. Bilgiler e-posta adresinize gönderildi! Ödemeniz bize ulaşır ulaşmaz siparişiniz gönderilecektir.Tüm sorularınız için lütfen bizimle iletişime geçin.")
                              ]))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.heightPct(.025),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Sipariş Durumu
                              Text("Sipariş Durumu",
                                  style: TextStyles.textStyle14),
                              Row(
                                children: <Widget>[Spacer()],
                              ),
                              Text("Banka Havalesi Bekleniyor",
                                  style: TextStyles.textStyle18)
                            ],
                          ),
                        ),
                      ),
                      OrderDetailCard(),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Sipariş Durumu
                              // Taşıyıcı
                              Text("Taşıyıcı", style: TextStyles.textStyle14),
                              Row(
                                children: <Widget>[Spacer()],
                              ),

                              Text(" Antik A.Ş. Teslimat (İstanbul İçi)",
                                  style: TextStyles.textStyle18)
                            ],
                          ),
                        ),
                      ),
                      EachAddressCart(
                        title: "Teslimat Adresi",
                      ),
                      EachAddressCart(
                        title: "Fatura Adresi",
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
