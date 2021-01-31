import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

//All
//orange gradient
class CustomFlatButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final Color color;
  final TextStyle style;

  const CustomFlatButton(
      {Key key, this.onPressed, this.name, this.color, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        //  onPressed: onPressed,
        child: Container(
          width: context.widthPx,
          color: color == null ? Colors.white : color,
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(name,
                style: (style == null)
                    ? Theme.of(context).textTheme.button
                    : style),
          ),
        ),
      ),
    );
  }
} //

class CustomRoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final TextStyle style;

  const CustomRoundButton({Key key, this.onPressed, this.name, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: context.widthPx,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(26)),
            color: ColorsCustom.velvet
            /*gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[colorButtonGradient1, colorButtonGradient2],
          ),*/
            ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            name,
            style: (style == null) ? TextStyles.textStyle15 : style,
          ),
        ),
      ),
    );
  }
} //

class CustomRoundButton1 extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final TextStyle style;

  const CustomRoundButton1({Key key, this.onPressed, this.name, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: context.widthPx,
        decoration: BoxDecoration(
          color: ColorsCustom.steel_grey,
          borderRadius: BorderRadius.all(Radius.circular(26)),
          /*gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
           // colors: <Color>[colorAppBarGradient1, colorAppBarGradient2],
          ),*/
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(name, style: style),
        ),
      ),
    );
  }
} //

//transparent with border
class CustomFlatButtonTransparent extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final Color color;
  final TextStyle textStyle;

  const CustomFlatButtonTransparent(
      {Key key, this.onPressed, this.name, this.color, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: context.widthPx,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(26)),
            border: Border.all(color: color, width: 1),
            color: Colors.transparent),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(name,
              style: (textStyle == null)
                  ? TextStyles.textStyle17.copyWith(color: color)
                  : textStyle.copyWith(color: color)),
        ),
      ),
    );
  }
}

class CustomFlatButtonTransparent1 extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final Color color;
  final TextStyle textStyle;

  const CustomFlatButtonTransparent1(
      {Key key, this.onPressed, this.name, this.color, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: context.widthPx,
        decoration: BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(26)),
            border: Border.all(color: color, width: 1),
            color: Colors.transparent),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(name,
              style: (textStyle == null)
                  ? TextStyles.textStyle17.copyWith(color: color)
                  : textStyle.copyWith(color: color)),
        ),
      ),
    );
  }
}

class CustomFlatButtonTransparent2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final Color color;
  final TextStyle textStyle;

  const CustomFlatButtonTransparent2(
      {Key key, this.onPressed, this.name, this.color, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: context.widthPx,
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(name,
              style: (textStyle == null)
                  ? TextStyles.textStyle17
                      .copyWith(color: ColorsCustom.steel_grey)
                  : textStyle.copyWith(color: color)),
        ),
      ),
    );
  }
}

class CustomFlatButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final Color color;
  final TextStyle style;

  const CustomFlatButton2(
      {Key key, this.onPressed, this.name, this.color, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: context.widthPx,
        color: color,
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(name, style: style),
        ),
      ),
    );
  }
}
