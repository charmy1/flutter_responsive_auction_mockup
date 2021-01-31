
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget {
  final String label;
  final String icon;
  final String disabledIcon;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final String inputDecoration;
  final TextStyle textStyle;

  const CustomDatePicker(
      {Key key,
      this.label,
      this.icon,
      this.disabledIcon,
      this.onChanged,
      this.validator,
      this.inputDecoration, this.textStyle})
      : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime selectedDate;
  TextEditingController dateCtl = TextEditingController();
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    selectedDate = DateTime.now();
    dateCtl.text = DateTime.now().toIso8601String();
    final f = new DateFormat('dd-MM-yyyy');
    dateCtl.text = (widget.label==null)?f.format(selectedDate):widget.label;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
                //  primarySwatch:  Colors.black,
                colorScheme:
                    ColorScheme.light(primary: ColorsCustom.velvet),
                //ok cancel button color

                buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                ),
                //primary color from theme for year and Date
                primaryColor: ColorsCustom.velvet,
                //Head background

                accentColor: ColorsCustom.velvet //selection color

                //dialogBackgroundColor: Colors.white,//Background color
                ),
            child: child,
          );
        },
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990, 1),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        // dateCtl.text = picked.toIso8601String();

        final f = new DateFormat('dd-MM-yyyy');
        dateCtl.text = f.format(picked);
        widget.onChanged(f.format(picked));
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: widget.textStyle,
        cursorColor: Colors.transparent,
        onChanged: widget.onChanged,
        validator: widget.validator,
        controller: dateCtl,
        onTap: () {
          _requestFocus();
          _selectDate(context);
        },
        decoration: formDecoration.copyWith(
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
