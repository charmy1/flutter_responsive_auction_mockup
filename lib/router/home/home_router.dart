import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/home/home_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/bottom_nav_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/code_confirm/code_confirmation_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/forgot_pass/forgot_password_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/signup_signin/signin_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/signup_signin/signup_page.dart';

@MaterialAutoRouter(
  routesClassName: "HomeRoutes",
  routes: [
    AdaptiveRoute (page: HomePage1, initial: true),

  ],
)
class $HomeRouter {}
