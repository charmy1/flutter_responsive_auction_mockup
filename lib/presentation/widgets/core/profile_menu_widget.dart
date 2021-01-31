//
//
//import 'package:auto_route/auto_route.dart';
//import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
//import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottomnavigation/home/widgets/profile_menu.dart';
//import 'package:flutter_app_responsive_auction_mockup/router/nested_router.gr.dart';
//import 'package:flutter/material.dart';
//
//class ProfileMenuWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return  ProfileMenuMenu(
//      onChange: (index) {
//        switch (index) {
//          case 0:
//            ExtendedNavigator.ofRouter<NestedRouter>()
//                .pushNamed(NestedRoutes.profileDropDownPage);
//            break;
//          case 1:
//            ExtendedNavigator.ofRouter<NestedRouter>().pushNamed(
//                NestedRoutes.universityPreferenceListPage);
//            break;
//          case 2:
//            ExtendedNavigator.ofRouter<NestedRouter>()
//                .pushNamed(NestedRoutes.scoreCalculationPage);
//            break;
//          case 3:
//          //   ExtendedNavigator.ofRouter<NestedRouter>()
//          //   .pushNamed(NestedRoutes.scoreCalculationPage);
//            break;
//        }
//      },
//      icons: [
//        Column(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.start,
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(left: 4),
//              child: Text(
//                'Profilim ',
//                //Profilim,Tercih Listem,Puan Hesaplama
//                style: Theme.of(context).textTheme.headline3,
//              ),
//            ),
//            Divider()
//          ],
//        ),
//        /*Text(
//                        'Profilim ', //Profilim,Tercih Listem,Puan Hesaplama
//                        style: Theme.of(context).textTheme.headline3,
//                      ),*/
//        Column(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.start,
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(left: 4),
//              child: Text(
//                'Tercih Listem ',
//                style: Theme.of(context).textTheme.headline3,
//              ),
//            ),
//            Divider()
//          ],
//        ),
//        Column(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.start,
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(left: 4),
//              child: Text(
//                'Puan Hesaplama',
//                style: Theme.of(context).textTheme.headline3,
//              ),
//            ),
//            Divider()
//          ],
//        ),
//        Column(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.start,
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(left: 4),
//              child: Text(
//                'Çıkış',
//                style: Theme.of(context)
//                    .textTheme
//                    .headline3
//                    .copyWith(color: colormenuTextColor1),
//              ),
//            ),
//            Divider(
//              color: Colors.transparent,
//            )
//          ],
//        ),
//        /*  Column(
//                        mainAxisSize: MainAxisSize.max,
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Text('Çıkış',
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .headline3
//                                  .copyWith(color: colormenuTextColor1)),
//
//                        ],
//                      )*/
//        /* Text(
//                        'Tercih Listem',
//                        style: Theme.of(context).textTheme.headline3,
//                      ),
//                      Text(
//                        'Puan Hesaplama',
//                        style: Theme.of(context).textTheme.headline3,
//                      ),
//                      Text(
//                        'Çıkış',
//                        style: Theme.of(context).textTheme.headline3.copyWith(color: colorSwipeToDelete),
//                      ),*/
//      ],
//      iconColor: Colors.white,
//    );
//  }
//}
