import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/application/timer_bloc/timer_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/custom_app_bar.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/drawer_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/router/auctions/auctions_router.gr.dart';
import 'package:flutter_app_responsive_auction_mockup/router/buy_now/buy_now_router.gr.dart';
import 'package:flutter_app_responsive_auction_mockup/router/home/home_router.gr.dart';
import 'package:flutter_app_responsive_auction_mockup/router/profile/profile_router.gr.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../injection.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

toggleDrawer() {
  if (scaffoldKey.currentState.isDrawerOpen) {
    scaffoldKey.currentState.openEndDrawer();
  } else {
    scaffoldKey.currentState.openDrawer();
  }
}

class BottomNavPage extends StatefulWidget {
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return BlocBuilder<BottomNavBloc, BottomNavState>(
          builder: (BuildContext context, state) {
        int currentIndex;
        state.when(
            homeState: () => currentIndex = 0,
            auctionState: () => currentIndex = 1,
            buyNowState: () => currentIndex = 2,
            profileState: () => currentIndex = 3);
        return Scaffold(
            key: scaffoldKey,
            drawer: Drawer(
              child: Container(
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: ColorsCustom.white,
                  ),
                  child: DrawerWidget(
                    context: context,
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: BlocProvider(
                ///stream of data coming from network , affect all pages , aand its relevant product so at top level
                create: (context) =>
                    getIt<TimerBloc>()..add(TimerEvent.start(duration: 210)),
                //flash at 180

                child: BottomNavWidget(),
              ),
            ),
            bottomNavigationBar: BottomNavigationBarWidget());
      });
    });
  }
}

class BottomNavWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      //  SizedBox(height: 7*SizeConfig.heightMultiplier,),
      CustomAppBar(
        leading: GestureDetector(
          onTap: () {
            scaffoldKey.currentState.openDrawer();
          },
          child: SvgPicture.asset(
            "assets/images/svg/menu.svg",
            width: 3 * SizeConfig.widthMultiplier,
            height: 2.5 * SizeConfig.heightMultiplier,
          ),
        ),

        logIn: GestureDetector(
          onTap: () {
            ExtendedNavigator.named("rootNav").push(Routes.signInPage);
          },
          child: FittedBox(
            child: Text(
              "Log In ",
              style: TextStyles.textStyle6,
            ),
          ),
        ),
        trailing1: InkWell(
          onTap: () {
            ExtendedNavigator.named("rootNav").push(Routes.searchPage);
          },
          child: SvgPicture.asset(
            "assets/images/svg/search.svg",
            width: 3 * SizeConfig.widthMultiplier,
            height: 2.5 * SizeConfig.heightMultiplier,
          ),
        ),
        trailing: InkWell(
          onTap: () {
            ExtendedNavigator.named("rootNav").push(Routes.myCart);
          },
          child: SvgPicture.asset(
            "assets/images/svg/cart.svg",
            width: 3 * SizeConfig.widthMultiplier,
            height: 2.5 * SizeConfig.heightMultiplier,
          ),
        ),
      ),
      Expanded(
        child: BlocBuilder<BottomNavBloc, BottomNavState>(
            builder: (BuildContext context, state) {
          int currentIndex;

          state.when(
              homeState: () => currentIndex = 0,
              auctionState: () => currentIndex = 1,
              buyNowState: () => currentIndex = 2,
              profileState: () => currentIndex = 3);

          return IndexedStack(
            index: currentIndex,
            children: [
              ExtendedNavigator(
                router: HomeRouter(),
                name: "homeNav",
              ),
              ExtendedNavigator(
                router: AuctionsRouter(),
                name: "auctionsNav",
              ),
              //other routers
              ExtendedNavigator(
                router: BuyNowRouter(),
                name: "buyNowNav",
              ),
              ExtendedNavigator(
                router: ProfileRouter(),
                name: "profileNav",
              ),
            ],
          );
        }),
      ),
    ]);
  }
} //childWidget

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (BuildContext context, state) {
      int currentIndex;
      state.when(
          homeState: () => currentIndex = 0,
          auctionState: () => currentIndex = 1,
          buyNowState: () => currentIndex = 2,
          profileState: () => currentIndex = 3);

      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: ColorsCustom.velvet,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        selectedLabelStyle: TextStyles.textStyleBottomNav,
        unselectedLabelStyle: TextStyles.textStyleBottomNav,
        onTap: (index) {
          switch (index) {
            case 0:
              context.bloc<BottomNavBloc>().add(BottomNavEvent.homeClick());

              break;
            case 1:
              context.bloc<BottomNavBloc>().add(BottomNavEvent.auctionClick());
              break;
            case 2:
              context.bloc<BottomNavBloc>().add(BottomNavEvent.buyNowClick());
              break;
            case 3:
              context.bloc<BottomNavBloc>().add(BottomNavEvent.profileClick());
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            title: Text("Ana Sayfa"),
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SvgPicture.asset(
                "assets/images/svg/discover.svg",
                width: 5 * SizeConfig.widthMultiplier,
                height: 3 * SizeConfig.heightMultiplier,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SvgPicture.asset(
                "assets/images/svg/discover.svg",
                width: 5 * SizeConfig.widthMultiplier,
                height: 3 * SizeConfig.heightMultiplier,
                color: ColorsCustom.velvet,
              ),
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Müzayede"),
            icon: SvgPicture.asset(
              "assets/images/svg/offers.svg",
              width: 5 * SizeConfig.widthMultiplier,
              height: 3 * SizeConfig.heightMultiplier,
            ),
            activeIcon: SvgPicture.asset(
              "assets/images/svg/offers.svg",
              width: 5 * SizeConfig.widthMultiplier,
              height: 3 * SizeConfig.heightMultiplier,
              color: ColorsCustom.velvet,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Hemen Al"),
            icon: SvgPicture.asset(
              "assets/images/svg/plus.svg",
              width: 5 * SizeConfig.widthMultiplier,
              height: 3 * SizeConfig.heightMultiplier,
            ),
            activeIcon: SvgPicture.asset(
              "assets/images/svg/plus.svg",
              width: 5 * SizeConfig.widthMultiplier,
              height: 3 * SizeConfig.heightMultiplier,
              color: ColorsCustom.velvet,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Hesabım"),
            icon: SvgPicture.asset(
              "assets/images/svg/profile.svg",
              width: 5 * SizeConfig.widthMultiplier,
              height: 3 * SizeConfig.heightMultiplier,
            ),
            activeIcon: SvgPicture.asset(
              "assets/images/svg/profile.svg",
              color: ColorsCustom.velvet,
              width: 5 * SizeConfig.widthMultiplier,
              height: 3 * SizeConfig.heightMultiplier,
            ),
          ),
        ], //Add
      );
    });
  }
}
