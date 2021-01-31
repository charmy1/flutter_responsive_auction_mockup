import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/application/counter/counter_cubit.dart';
import 'package:flutter_app_responsive_auction_mockup/application/timer_bloc/timer_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/injection.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/widget/blinking_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';

class BidFastDialog extends StatelessWidget {
  final TimerBloc _timerBloc = getIt<TimerBloc>();

  @override
  Widget build(BuildContext dialogContext) {
    return Dialog(
        child: BlocProvider(
      create: (_) => CounterCubit(),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: BlocBuilder<CounterCubit, double>(
              builder: (context, count) => Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Banka Havalesi İle Ö
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Kredi Kartı İle Ödem
                        // Teklif Ver
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(dialogContext);
                          },
                          child: SvgPicture.asset(
                            "assets/images/svg/close.svg",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.5 * 2 * SizeConfig.heightMultiplier,
                    ),

/**/
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          //color: Color(0xffeeeeeee),
                          border: Border.all(
                            color: ColorsCustom.colorGrey,
                          ),
                        ),
                        height: 30 * SizeConfig.heightMultiplier,
                        width: dialogContext.widthPx,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 1.5,
                              vertical: SizeConfig.heightMultiplier * 1.5),
                          child: Image.asset("assets/static/banner3.jpg",
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.5 * SizeConfig.heightMultiplier,
                    ),

                    BlocBuilder<TimerBloc, TimerState>(
                      cubit: _timerBloc,
                      builder: (dialogContext, state) {
//intent value

                        if (state is Running) {
                          //  if(state is Running) {

                          var dur = state.duration;
                          // }

                          final String minutesStr = ((dur / 60) % 60)
                              .floor()
                              .toString()
                              .padLeft(2, '0');
                          final String secondsStr =
                              (dur % 60).floor().toString().padLeft(2, '0');

                          /* return Text("$minutesStr:$secondsStr",
                                                style: TextStyles.textStyle29, textAlign: TextAlign.center);*/

                          return (dur <= 180)
                              ? Container(
                                  width: dialogContext.widthPx,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffbeaea),
                                    border: Border.all(
                                      color: ColorsCustom.watermelon,
                                      width: 1,
                                    ),

                                    //  color: ColorsCustom.tomato,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    child: Column(
                                      children: [
                                        BlinkWidget(
                                          children: <Widget>[
                                            Text(
                                              "00:$minutesStr:$secondsStr",
                                              style: TextStyles.textStyle29
                                                  .copyWith(
                                                      color:
                                                          ColorsCustom.tomato),
                                            ),
                                            Text(
                                              "00:$minutesStr:$secondsStr",
                                              style: TextStyles.textStyle29
                                                  .copyWith(
                                                      color:
                                                          Colors.transparent),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier * 1.5,
                                        ),
                                        Transform.rotate(
                                          angle: 3.14,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: ColorsCustom.watermelon,
                                                width: 1,
                                              ),

                                              //  color: ColorsCustom.tomato,
                                            ),
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  Colors.transparent,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                ColorsCustom.watermelon,
                                              ),
                                              value: dur / 180,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(
                                  width: dialogContext.widthPx,
                                  decoration: BoxDecoration(
                                    color: Color(0xffeeeeeee),
                                    border: Border.all(
                                        color: ColorsCustom.colorGrey),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Center(
                                    child: Text(
                                      "3 Gün $minutesStr:$secondsStr",
                                      style: TextStyles.textStyle49_white,
                                    ),
                                  ),
                                );
                        } else {
                          return Align(
                              alignment: Alignment.center,
                              child: Text("Completed"));
                        }
                      },
                    ), //M
                    SizedBox(
                      height: dialogContext.heightPct(.025),
                    ),

                    // Lot 7p
                    Text("Lot 7", style: TextStyles.textStyle5),
                    SizedBox(
                      height: SizeConfig.heightMultiplier,
                    ),
                    // “Sirk”
                    Text("“Sirk”", style: TextStyles.textStyle23),
                    Divider(),
                    SizedBox(
                      height: 1.5 * SizeConfig.heightMultiplier,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: // Açılış Fiyatı : 1.20
                          RichText(
                              text: TextSpan(children: [
                        TextSpan(
                            style: TextStyles.textStyle21,
                            text: "Açılış Fiyatı : "),
                        //opening price
                        TextSpan(
                            style: TextStyles.textStyle21, text: " 1.20 TL")
                      ])),
                    ),
                    SizedBox(
                      height: dialogContext.heightPct(.025 / 2),
                    ),
                    // ignore: missing_required_param
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                          onTap: () => context.bloc<CounterCubit>().decrement(),
                          child: Container(
                              width: 25,
                              height: 25,
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyles.textStyle49_white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorsCustom.steel_grey,
                              )),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1.5 * 3,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                                border: Border.all(
                                    color: ColorsCustom.velvet, width: 1),
                                color: const Color(0xffffffff)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${count.toStringAsFixed(2)}' 'TL',
                                  style: TextStyles.textStyle26,
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1.5 * 3,
                        ),
                        InkWell(
                          onTap: () => context.bloc<CounterCubit>().increment(),
                          child: Container(
                              width: 25,
                              height: 25,
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyles.textStyle49_white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorsCustom.velvet,
                              )),
                        )
                      ],
                    ),

                    SizedBox(
                      height: dialogContext.heightPct(.025),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CustomFlatButton2(
                        color: ColorsCustom.velvet,
                        style: TextStyles.textStyle17
                            .copyWith(color: Colors.white),
                        name: "Teklif Ver",
                        onPressed: () {
                          showDialog(
                              context: dialogContext,
                              builder: (BuildContext context) {
                                return BidFastDialog1(
                                  stringAsFixed: count.toStringAsFixed(2),
                                );
                              });
                          // Navigator.pop(dialogContext);
                        },
                      ),
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: CustomFlatButtonTransparent2(
                        name: "İptal ",
                        color: ColorsCustom.velvet,
                        onPressed: () {
                          Navigator.pop(dialogContext);
                        },
                      ),
                    )

                    /**/
                  ]),
            ),
          )),
    ));
  }
}

class BidFastDialog1 extends StatelessWidget {
  final String stringAsFixed;

  const BidFastDialog1({Key key, this.stringAsFixed}) : super(key: key);

  @override
  Widget build(BuildContext dialogContext) {
    return Dialog(
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Banka Havalesi İle Ö
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Kredi Kartı İle Ödem
                        // Teklif Ver
                        Spacer(),
                        //Text("Teklif Ver", style: TextStyles.textStyle4),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(dialogContext);
                          },
                          child: SvgPicture.asset(
                            "assets/images/svg/close.svg",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: dialogContext.heightPct(.025 / 2),
                    ),

/**/
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          //color: Color(0xffeeeeeee),
                          border: Border.all(
                            color: ColorsCustom.colorGrey,
                          ),
                        ),
                        height: 30 * SizeConfig.heightMultiplier,
                        width: dialogContext.widthPx,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 1.5,
                              vertical: SizeConfig.heightMultiplier * 1.5),
                          child: Image.asset("assets/static/banner3.jpg",
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.heightMultiplier,
                    ),

                    BlocBuilder<TimerBloc, TimerState>(
                      cubit: getIt<TimerBloc>(),
                      builder: (dialogContext, state) {
//intent value

                        if (state is Running) {
                          //  if(state is Running) {

                          var dur = state.duration;
                          // }

                          final String minutesStr = ((dur / 60) % 60)
                              .floor()
                              .toString()
                              .padLeft(2, '0');
                          final String secondsStr =
                              (dur % 60).floor().toString().padLeft(2, '0');

                          /* return Text("$minutesStr:$secondsStr",
                                                style: TextStyles.textStyle29, textAlign: TextAlign.center);*/

                          return (dur <= 180)
                              ? Container(
                                  width: dialogContext.widthPx,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffbeaea),
                                    border: Border.all(
                                      color: ColorsCustom.watermelon,
                                      width: 1,
                                    ),

                                    //  color: ColorsCustom.tomato,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    child: Column(
                                      children: [
                                        BlinkWidget(
                                          children: <Widget>[
                                            Text(
                                              "00:$minutesStr:$secondsStr",
                                              style: TextStyles.textStyle29
                                                  .copyWith(
                                                      color:
                                                          ColorsCustom.tomato),
                                            ),
                                            Text(
                                              "00:$minutesStr:$secondsStr",
                                              style: TextStyles.textStyle29
                                                  .copyWith(
                                                      color:
                                                          Colors.transparent),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier * 1.5,
                                        ),
                                        Transform.rotate(
                                          angle: 3.14,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: ColorsCustom.watermelon,
                                                width: 1,
                                              ),

                                              //  color: ColorsCustom.tomato,
                                            ),
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  Colors.transparent,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                ColorsCustom.watermelon,
                                              ),
                                              value: dur / 180,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(
                                  width: dialogContext.widthPx,
                                  decoration: BoxDecoration(
                                    color: Color(0xffeeeeeee),
                                    border: Border.all(
                                        color: ColorsCustom.colorGrey),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Center(
                                    child: Text(
                                      "3 Gün $minutesStr:$secondsStr",
                                      style: TextStyles.textStyle49_white,
                                    ),
                                  ),
                                );
                        } else {
                          return Align(
                              alignment: Alignment.center,
                              child: Text("Completed"));
                        }
                      },
                    ),
                    // Lot 7
                    SizedBox(
                      height: SizeConfig.heightMultiplier,
                    ),
                    Text("Lot 7", style: TextStyles.textStyle5),

                    SizedBox(
                      height: SizeConfig.heightMultiplier,
                    ),
                    // “Sirk”
                    Text("“Sirk”", style: TextStyles.textStyle23),
                    Divider(),
                    SizedBox(
                      height: dialogContext.heightPct(.025),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: // Açılış Fiyatı : 1.20
                          RichText(
                              text: TextSpan(children: [
                        TextSpan(
                            style: TextStyles.textStyle21,
                            text: "Açılış Fiyatı : "),
                        TextSpan(style: TextStyles.textStyle21, text: "1.20 TL")
                      ])),
                    ),
                    SizedBox(
                      height: dialogContext.heightPct(.025),
                    ),
// Teklifiniz: 1.400 TL
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                          //textAlign: TextAlign.center,
                          text: TextSpan(children: [
                        TextSpan(
                            style: TextStyles.textStyle43.copyWith(fontWeight: FontWeight.w600),
                            text: "Teklifiniz: "),
                        TextSpan(
                            style: TextStyles.textStyle43.copyWith(fontWeight: FontWeight.w600),
                            text: "$stringAsFixed TL")
                      ])),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier,
                    ),

                    Text(
                      "KDV ve Komisyon Dahil:6.818,04 TL ",
                      textAlign: TextAlign.center,
                      style: TextStyles.textStyle18,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: CustomFlatButton2(
                            color: ColorsCustom.velvet,
                            style: TextStyles.textStyle17
                                .copyWith(color: Colors.white,fontWeight: FontWeight.w600),
                            name: "$stringAsFixed TL Teklifi Onayla",
                            onPressed: () {
                              showDialog(
                                  context: dialogContext,
                                  builder: (BuildContext context) {
                                    return BidFastDialog2();
                                  });
                            },
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: CustomFlatButtonTransparent2(
                            name: "İptal ",
                            color: ColorsCustom.velvet,
                            onPressed: () {
                              Navigator.pop(dialogContext);
                            },
                          ),
                        )
                      ],
                    )

                    /**/
                  ]),
            )));
  }
}

class BidFastDialog2 extends StatelessWidget {
  @override
  Widget build(BuildContext dialogContext) {
    return Dialog(
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/svg/confirm.svg",
                    ),

                    SizedBox(
                      height: dialogContext.heightPct(.025),
                    ),
                    Text("En yüksek fiyat teklifine sahipsiniz!",
                        style: TextStyles.textStyle45
                            .copyWith(color: ColorsCustom.green),
                        textAlign: TextAlign.center),

                    SizedBox(
                      height: dialogContext.heightPct(.025 / 2),
                    ),

                    Text("Tebrikler!",
                        style: TextStyles.textStyle44
                            .copyWith(color: ColorsCustom.green),
                        textAlign: TextAlign.center),
                    // En yüksek fiyat tekl

                    SizedBox(
                      height: dialogContext.heightPct(.025),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: CustomFlatButton2(
                            color: ColorsCustom.velvet,
                            style: TextStyles.textStyle17
                                .copyWith(color: Colors.white),
                            name: "Kapat", //close
                            onPressed: () {
                              Navigator.pop(dialogContext);
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: dialogContext.heightPct(.025),
                    ),
                  ]),
            )));
  }
}
