import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/bank_accounts/bank_account_holder.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/bank_accounts/each_bank_accounts_row.dart';

import 'package:sized_context/sized_context.dart';

class BankAccounts extends StatelessWidget {
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
          title: Text("Banka Hesap Numaraları",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: boxShadowDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: context.heightPct(.025 * 2),
                  ),
                  Container(
                      width: context.widthPx,
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorsCustom.silver),
                        color: Colors.white,
                      ),
                      child: BankAccountHolder()),
                  SizedBox(
                    height: context.heightPct(.025),
                  ),
                  Container(
                    width: context.widthPx,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsCustom.silver),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text("Banka Hesapları", style: TextStyles.textStyle14),
                        SizedBox(
                          height: context.heightPct(.025),
                        ),
                        EachBankAccountsRow(),
                        EachBankAccountsRow(),
                        EachBankAccountsRow(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.heightPct(.025),
                  ),
                  // Banka havalesi açıkl
                  Text(
                      "Banka havalesi açıklama kısmına sipariş referansını eklemeyi unutmayınız.",
                      style: TextStyles.textStyle19,
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ));
  }
}
