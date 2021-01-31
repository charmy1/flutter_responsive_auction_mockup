import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/cart/delivery/sales_contract_dialog_widget.dart';

class CartDeliveryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        EachDeliveryItem(
          image: "assets/images/bitmap/aras.png",
        ),
        EachDeliveryItem(
          image: "assets/images/bitmap/aras.png",
        ),
        EachDeliveryItem(
          image: "assets/images/aras/aras.png",
        ),

        SizedBox(
          height: context.heightPct(0.025),
        ),
        // Lütfen alışverişleri
        Row(
          children: <Widget>[
            Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    border: Border.all(color: ColorsCustom.tomato, width: 1),
                    color: const Color(0xffffffff))),

            SizedBox(
              width: context.widthPct(.01),
            ),
            Flexible(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    style: TextStyles.textStyle34,
                    text: "Lütfen alışverişlerinize devam etmek için "),
                TextSpan(
                    style: TextStyles.textStyle35,
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return SalesContractDialogWidget();
                            });
                      },
                    text: "Site Hizmet Şartları’"),
                TextSpan(
                    style: TextStyles.textStyle34, text: "’nı kabul ediniz.")
              ])),
            )
          ],
        )
      ],
    );
  }
}

class EachDeliveryItem extends StatelessWidget {
  final String image;

  const EachDeliveryItem({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomRoundCheckBox(),
            Image.asset(image),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(" Antik A.Ş. Merkezinden ",
                    style: TextStyles.textStyle32),
                Text("Teslim Alma", style: TextStyles.textStyle32),
              ],
            ),
            Text("0 TL", style: TextStyles.textStyle33)
          ],
        ),
      ),
    );
  }
}

class CustomRoundCheckBox extends StatefulWidget {
  @override
  _CustomRoundCheckBoxState createState() => _CustomRoundCheckBoxState();
}

class _CustomRoundCheckBoxState extends State<CustomRoundCheckBox> {
  bool checked;

  @override
  void initState() {

    super.initState();
    checked = false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          checked = !checked;
        });
      },
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ColorsCustom.silver, width: 2),
            color: const Color(0xffffffff)),
        child: (checked)
            ? SvgPicture.asset(
                "assets/images/svg/correct_radio.svg",
              )
            : Container(
                decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              )),
      ),
    );
  }
}
