import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:sized_context/sized_context.dart';

import '../../../size_config.dart';

//state for the vertical line and card for each process and not the step number and tick state

class EachProcess extends StatelessWidget {
  final bool st;
  final bool st1;
  final VoidCallback onPressed;
  final Widget widget;
  final int processId;

  const EachProcess(
      {Key key, this.st, this.onPressed, this.widget, this.processId, this.st1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: EachProcessWidget(
        onPressed: onPressed,
        processId: processId,
        widget: widget,
        st: st,
        st1: st1,
      ),
    );
  }
}

class EachProcessWidget extends StatelessWidget {
  final bool st;
  final bool st1;
  final VoidCallback onPressed;
  final Widget widget;
  final int processId;

  const EachProcessWidget(
      {Key key, this.st, this.onPressed, this.widget, this.processId, this.st1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          VerticalDivider(
            width: 10,
            color: (st1) ? ColorsCustom.velvet : ColorsCustom.steel_grey,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: context.heightPct(.01),
                ),
                Visibility(
                  child: widget,
                  visible: st,
                ),
                Visibility(
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      Flexible(
                          child: CustomRoundButton(
                              name: "Devam", onPressed: onPressed))
                      //continue
                    ],
                  ),
                  visible: (processId != null && processId == 4) ? false : st,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
