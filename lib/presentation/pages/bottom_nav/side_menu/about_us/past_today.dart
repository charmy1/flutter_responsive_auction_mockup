import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_turn/page_turn.dart';
import 'package:sized_context/sized_context.dart';

class PastToday extends StatefulWidget {
  @override
  _PastTodayState createState() => _PastTodayState();
}

class _PastTodayState extends State<PastToday> {
  int page = 0;

  final _controller = GlobalKey<PageTurnState>();

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
          title: Text("Dünden Bugüne",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Container(
            decoration: boxShadowDecoration,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: context.heightPct(.25),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            child: SvgPicture.asset(
                              "assets/images/svg/forward_left.svg",
                            ),
                            onTap: () {
//                              setState(() {
//                                page=page++;
//                              });
//
//                              _controller.currentState.goToPage((page==0)?0:page);
                            },
                          ),
                          Spacer(),
                          GestureDetector(
                            child: SvgPicture.asset(
                              "assets/images/svg/forward_right.svg",
                            ),
                            onTap: () {
//                              setState(() {
//                                page=page--;
//                              });
//                              _controller.currentState.goToPage(page);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.heightPct(.025 * 2),
                      ),
                      Container(
                        color: Colors.grey,
                        height: context.heightPct(.3),
//                        child: PageTurn(
//                          key: _controller,
//                          backgroundColor: Colors.white,
//                          showDragCutoff: false,
//                          lastPage: Container(child: Center(child: Text('Last Page!'))),
//                          children: <Widget>[
//                            for (var i = 0; i < 20; i++) EachPage(),
//                          ],
//                        ),
                      )
                    ]))));
  }
}

class EachPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: const Center(
        child: Text("page"),
      ),
    );
  }
}
