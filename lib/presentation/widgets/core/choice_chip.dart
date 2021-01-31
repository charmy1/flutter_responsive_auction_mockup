import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';


//Choice chip
class ChoiceChipCustom extends StatefulWidget {
  final bool horizontal;

  final List buttonValues;
  final TextStyle active;
  final TextStyle inactive;

  final double hight;
  final double width;

  final List<String> buttonLables;

  final Function(dynamic) radioButtonValue;

  final Color selectedColor;

  final Color buttonColor;
  final ShapeBorder customShape;
  final bool enableShape;
  final double elevation;

  ChoiceChipCustom({
    this.buttonLables,
    this.buttonValues,
    this.radioButtonValue,
    this.buttonColor,
    this.selectedColor,
    this.hight = 38,
    this.width = 100,
    this.horizontal = false,
    this.enableShape = false,
    this.elevation = 0,
    this.customShape,
    this.active,
    this.inactive,
  })  : assert(buttonLables.length == buttonValues.length),
        assert(buttonColor != null),
        assert(selectedColor != null);

  _ChoiceChipCustomState createState() => _ChoiceChipCustomState();
}

class _ChoiceChipCustomState extends State<ChoiceChipCustom> {
  int currentSelected = 0;
  String currentSelectedLabel;

  @override
  void initState() {
    super.initState();
    currentSelectedLabel = widget.buttonLables[0];
  }

  List<Widget> buildButtonsColumn() {
    List<Widget> buttons = [];
    for (int index = 0; index < widget.buttonLables.length; index++) {
      var button = GestureDetector(
          onTap: () {
            widget.radioButtonValue(widget.buttonValues[index]);
            setState(() {
              currentSelected = index;
              currentSelectedLabel = widget.buttonLables[index];
            });
          },
          child: Container(
              child: Container(
                height: widget.hight,
                child: Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: Text(widget.buttonLables[index],
                          style: (currentSelectedLabel ==
                                  widget.buttonLables[index])
                              ? widget.active
                              : widget.inactive
/*TextStyle(
                        color: currentSelectedLabel == widget.buttonLables[index]
                            ? Colors.white
                            : Theme
                            .of(context)
                            .textTheme
                            .body1
                            .color,
                        fontSize: 15,
                      ),*/
                          ),
                    ),
                  ),
                ),
              ),
              height: 83,
              decoration: currentSelectedLabel == widget.buttonLables[index]
                  ? new BoxDecoration(
                      borderRadius: BorderRadius.circular(18.5),
                      color: ColorsCustom.velvet)
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(18.5),
                      color: Colors.white)));

      /*  decoration: new BoxDecoration(
              color: currentSelectedLabel == widget.buttonLables[index]
                  ? widget.selectedColor
                  : widget.buttonColor,
              border: new Border.all(
                color: Colors.black,
                width: 1.0,
              ),
              shape: BoxShape.circle),*/

      buttons.add(button);
    }
    return buttons;
  }

  List<Widget> buildButtonsRow() {
    List<Widget> buttons = [];
    for (int index = 0; index < widget.buttonLables.length; index++) {
      var button = Expanded(
        child: GestureDetector(
            onTap: () {
              widget.radioButtonValue(widget.buttonValues[index]);
              setState(() {
                currentSelected = index;
                currentSelectedLabel = widget.buttonLables[index];
              });
            },
            child: Container(
                child: Container(
                  //height: 38,

                  child: Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Text(widget.buttonLables[index],
                            style: (currentSelectedLabel ==
                                    widget.buttonLables[index])
                                ? widget.active
                                : widget.inactive
/*TextStyle(
                          color: currentSelectedLabel == widget.buttonLables[index]
                              ? Colors.white
                              : Theme
                              .of(context)
                              .textTheme
                              .body1
                              .color,
                          fontSize: 15,
                        ),*/
                            ),
                      ),
                    ),
                  ),
                ),
                height: 38,
                decoration: currentSelectedLabel == widget.buttonLables[index]
                    ? new BoxDecoration(
                        borderRadius: BorderRadius.circular(18.5),
                        color: ColorsCustom.velvet)
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(18.5),
                        color: Colors.white))),
      );

      buttons.add(button);
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18.5)),
      height: widget.horizontal
          ? widget.hight * (widget.buttonLables.length + 0.5)
          : null,
      child: Center(
        child: widget.horizontal
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: buildButtonsColumn(),
              )
            : Container(
                //color: Colors.green,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: ColorsCustom.silver,
                    ),
                    borderRadius: BorderRadius.circular(18.5)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: buildButtonsRow(),
                ),
              ),
      ),
    );
  }
}

class ChoiceChipColorCustom extends StatefulWidget {
  ChoiceChipColorCustom({
    this.buttonLables,
    this.buttonValues,
    this.radioButtonValue,
    this.buttonColor,
    this.selectedColor,
    this.hight = 38,
    this.width = 100,
    this.horizontal = false,
    this.enableShape = false,
    this.elevation = 0,
    this.customShape,
  })  : assert(buttonLables.length == buttonValues.length),
        assert(buttonColor != null),
        assert(selectedColor != null);

  final bool horizontal;

  final List buttonValues;

  final double hight;
  final double width;

  final List<Color> buttonLables;

  final Function(dynamic) radioButtonValue;

  final Color selectedColor;

  final Color buttonColor;
  final ShapeBorder customShape;
  final bool enableShape;
  final double elevation;

  _ChoiceChipColorCustomState createState() => _ChoiceChipColorCustomState();
}

class _ChoiceChipColorCustomState extends State<ChoiceChipColorCustom> {
  int currentSelected = 0;
  String currentSelectedLabel;

  @override
  void initState() {
    super.initState();
    currentSelectedLabel = widget.buttonValues[0].toString();
  }

  List<Widget> buildButtonsRow() {
    List<Widget> buttons = [];
    for (int index = 0; index < widget.buttonLables.length; index++) {
      var button = Expanded(
        child: GestureDetector(
            onTap: () {
              widget.radioButtonValue(widget.buttonValues[index]);
              setState(() {
                currentSelected = index;
                currentSelectedLabel = widget.buttonValues[index].toString();
              });
            },
            child: Container(
                child: Container(
                    //height: 38,

                    ),
                height: 30,
                width: 30,
                decoration: currentSelectedLabel == widget.buttonValues[index]
                    ? new BoxDecoration(
                        color: widget.buttonLables[index],
                        border: Border.all(color: Color(0xff888888), width: 5),
                        shape: BoxShape.circle,
                      )
                    : BoxDecoration(
                        color: widget.buttonLables[index],
                        shape: BoxShape.circle))),
      );

      buttons.add(button);
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buildButtonsRow(),
      ),
    );
  }
}
