import 'package:flutter_app_responsive_auction_mockup/application/sign_up_bloc/sign_up_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//checkbox from cK
class CustomCheckBox extends StatefulWidget {
  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _value;

  @override
  void initState() {

    super.initState();
    _value = false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Center(
            child: InkWell(
          onTap: () {
            setState(() {
              _value = !_value;

              context
                  .bloc<SignUpBloc>()
                  .add(SignUpFormEvent.checkboxChanged(_value));

              if (_value) {
                showAlert(context);
              }
            });
          },

          //Image.asset('assets/images/correct1/correct.png')
          child: Container(
            //decoration: boxDecorationAppBar,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: _value
                  ? Icon(
                      Icons.check,
                      size: 20.0,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.check_box_outline_blank,
                      size: 20.0,
                      color: Colors.white,
                    ),
            ),
          ),
        ));
      },
    );
  }

  showAlert(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Container(

            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Gizliklik Sözleşmesi',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: ColorsCustom.gunmetal),
                        ),
                        TextSpan(
                          text: ' ve',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        TextSpan(
                          text: ' Kullanıcı Sözleşmesi',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: ColorsCustom.gunmetal),
                        ),
                        TextSpan(
                          text: ' ’ni Kabul Ediyorum',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomFlatButton(
                    name: "I Agree",
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {Widget title,
      @required BuildContext context,
      FormFieldSetter<bool> onSaved,
      FormFieldValidator<bool> validator,
      bool initialValue = false,
      bool autovalidate = false})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            autovalidate: autovalidate,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                activeColor: Colors.transparent,
                checkColor: Colors.transparent,
                dense: state.hasError,
                title: title,
                value: state.value,
                onChanged: state.didChange,
                subtitle: state.hasError
                    ? Text(
                        state.errorText,
                        style: TextStyle(color: Theme.of(context).errorColor),
                      )
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });
}
