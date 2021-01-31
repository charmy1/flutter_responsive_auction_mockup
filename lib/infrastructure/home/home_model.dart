import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/bottom_nav_page.dart';
import 'package:flutter_app_responsive_auction_mockup/router/profile/profile_router.gr.dart';

import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../injection.dart';

//here may be whole from network  so can convert to freezed
class Entry {
  Entry(this.title, [this.routeName, this.children = const <Entry>[]]);

  final String title;

  final List<String>
      routeName; //roortname-0, rootPage-1 ["rootNav", "Routes.sideMenuPage"]//
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'USER NAME',
    ["rootNav", Routes.sideMenuPage],
    <Entry>[
      Entry(
        'HESABIM',
        //My ACcount bootom nav index 4
        //profile
      ),
      Entry('MÜZAYEDE TEKLİFLERİM', ["rootNav", Routes.sideMenuPage]),

      Entry('TAKİP ETTİĞİM ESERLER', ["rootNav", Routes.myOffersInAuction]),

      Entry('SEPETİM', ["rootNav", Routes.myCart]),
      //cart 4 to 4.6
      Entry('SİPARİŞLERİM', ["rootNav", Routes.orders]),
      //My order 18 and 19
      //orders

      Entry(
        'ÇIKIŞ YAP',
      ),
      //logout
    ],
  ),
  Entry(
    'MÜZAYEDELER',
  ),
  //bottom nav index 2

  Entry(
    'HEMEN AL',
  ),
  //buy it now (translate)// bottom navigation index 3


  Entry('ESER SATIŞ', ["rootNav", Routes.salesWork]),
  // tranlate SalesWOrk
  Entry('EKSPERTİZ', ["rootNav", Routes.expertise]),
  //Expertise
  Entry(
    'HAKKIMIZDA', //About us
    ["rootNav", Routes.sideMenuPage],
    <Entry>[
      Entry('  A.Ş.', ["rootNav", Routes.antikAs]),
      Entry('TARİHÇE', ["rootNav", Routes.history]),
      Entry('DUNDEN BUGUNE ANTIK A.Ş.', ["rootNav", Routes.pastToday]),
      Entry('HIZMETLERIMİZ', ["rootNav", Routes.ourServices]),
      Entry('BASINDA BİZ', ["rootNav", Routes.press]),
      Entry('MUZAYEDE REKORLARI', ["rootNav", Routes.auctionRecords]),
      Entry('ANTİK PALACE', ["rootNav", Routes.antiquePalace]),
      Entry(' GLOBAL ART SERGİ ', ["rootNav", Routes.global])
    ],
  ),
  Entry('ANTİK A.Ş YAYİNLARI', ["rootNav", Routes.antiquePublications]),
  //publications
  //
  Entry('İLETİŞİM', ["rootNav", Routes.contact])

];

class EntryItem extends StatelessWidget {
  final Entry entry;
  final BuildContext context;

  const EntryItem(this.entry, this.context);

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty)
      return Theme(
        data: ThemeData(
            textTheme: TextTheme(
                caption: TextStyles.textStyle2,
                headline6: TextStyles.textStyle2)),
        child: ListTileTheme(
            dense: true,
            selectedColor: ColorsCustom.velvet,
            child: ListTile(
                onTap: () {
                  if (root.routeName != null) {
                    ExtendedNavigator.named(root.routeName[0])
                        .push(root.routeName[1]);
                  } else {

                    switch (root.title) {
                      case "HESABIM":
                        //  getIt<BottomNavBloc>()..add(BottomNavEvent.profileClick()); doesnot work//todo getit
                        //ExtendedNavigator.root.pop();
                        // toggleDrawer();
                        BlocProvider.of<BottomNavBloc>(context)
                          ..add(BottomNavEvent.profileClick());
                        toggleDrawer();
                        break;
                      case "MÜZAYEDELER":
                        BlocProvider.of<BottomNavBloc>(context)
                          ..add(BottomNavEvent.auctionClick());
                        toggleDrawer();
                        break;
                      case 'HEMEN AL':
                        BlocProvider.of<BottomNavBloc>(context)
                          ..add(BottomNavEvent.buyNowClick());
                        toggleDrawer();
                        break;

                      case 'ÇIKIŞ YAP':
                        toggleDrawer();
                        //todo add logout
                        break;
                    }
                  }
                },
                //dense: true,//pack things

                trailing: (root.title.startsWith("Ç"))
                    ? SvgPicture.asset(
                        "assets/images/svg/forward.svg",
                        color: ColorsCustom.watermelon,
                      )
                    : SvgPicture.asset(
                        "assets/images/svg/forward.svg",
                      ),
                title: (root.title.startsWith("Ç"))
                    ? Text(root.title, style: TextStyles.textStyle3)
                    : Text(root.title, style: TextStyles.textStyle2))),
      );
    return Theme(
        data: ThemeData(
            textTheme: TextTheme(headline6: TextStyles.textStyle3 //

                ),
            accentColor: ColorsCustom.velvet,
            unselectedWidgetColor: ColorsCustom.velvet,
            textSelectionColor: ColorsCustom.velvet,
            selectedRowColor: ColorsCustom.velvet),
        child: (root.title.startsWith("M"))
            ? ListTileTheme(
                dense: true,
                selectedColor: ColorsCustom.velvet,
                // contentPadding: EdgeInsets.symmetric(vertical: 0),
                child: ExpansionTile(
                  key: PageStorageKey<Entry>(root),
                  title: Text(root.title, style: TextStyles.textStyle),
                  leading: SvgPicture.asset(
                    "assets/images/svg/profile.svg",
                    width: 20,
                    height: 20,
                    color: ColorsCustom.velvet,
                  ),
                  /* trailing: SvgPicture.asset(
                    "assets/images/svg/down.svg",
                  ),*/
                  children: root.children.map(_buildTiles).toList(),
                ),
              )
            : ListTileTheme(
                dense: true,
                child: ExpansionTile(
                  key: PageStorageKey<Entry>(root),
                  title: Text(root.title, style: TextStyles.textStyle2),
                  children: root.children.map(_buildTiles).toList(),
                ),
              ));
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
