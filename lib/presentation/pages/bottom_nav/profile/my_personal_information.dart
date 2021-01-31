import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/custom_date_picker.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:sized_context/sized_context.dart';


//todo add validation as data can be modified bloc
class MyPersonalInformation extends StatefulWidget {
  @override
  _MyPersonalInformationState createState() => _MyPersonalInformationState();
}

class _MyPersonalInformationState extends State<MyPersonalInformation> {
  @override
  void initState() {

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.named("profileNav").pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsCustom.steel_grey,
            ),
          ),
          centerTitle: true,
          title: Text("Kişisel Bilgilerim",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: boxShadowDecoration,
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: context.heightPct(.025),
                    ),

                    Text("Adı", style: TextStyles.textStyle14),

                    TextFormField(
                      style: TextStyles.textStyle13,
                      decoration: formDecoration.copyWith(hintText: "Adi"),
                    ),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),
                    // Soyadı
                    Text("Soyadı", style: TextStyles.textStyle14),
                    TextFormField(
                      style: TextStyles.textStyle13,
                      decoration: formDecoration.copyWith(hintText: "Soyadı"),
                    ),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),

                    // E-Posta (Değiştir)
                    Text("E-Posta (Değiştir)", style: TextStyles.textStyle14),
                    TextFormField(
                      style: TextStyles.textStyle13,
                      decoration: formDecoration.copyWith(
                          hintText: "E-Posta (Değiştir)"),
                    ),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),
                    // Şifre (Değiştir)
                    Text("Şifre (Değiştir)", style: TextStyles.textStyle14),
                    TextFormField(
                      style: TextStyles.textStyle13,
                      obscureText: true,
                      decoration:
                          formDecoration.copyWith(hintText: "Şifre (Değiştir)"),
                    ),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),
                    // Doğum Tarihi
                    Text("Doğum Tarihi", style: TextStyles.textStyle14),
                    CustomDatePicker(
                      textStyle: TextStyles.textStyle13,
                    ),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),
                    CustomRoundButton(
                      name: "Güncelle",
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
