import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:build_daemon/constants.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> list;
  final Color color;

  const CustomDropDown({Key key, this.list, this.color}) : super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String _currentSelectedValue1;

  @override
  void initState() {
    _currentSelectedValue1 = widget.list[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: formDecoration,
            isEmpty: _currentSelectedValue1 == '',
            child: DropdownButtonHideUnderline(
              child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.white,
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  style: TextStyles.textStyle13
                      .copyWith(color: ColorsCustom.steel_grey),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: (widget.color == null)
                        ? ColorsCustom.steel_grey
                        : widget.color,
                  ),
                  // ic,
                  value: _currentSelectedValue1,
                  isDense: true,
                  onChanged: (String newValue) {
                    setState(() {
                      _currentSelectedValue1 = newValue;
                      state.didChange(newValue);
                    });
                  },
                  items: widget.list.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: FittedBox(fit: BoxFit.contain, child: Text(value)),
                    );
                  }).toList(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
