import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchView extends StatelessWidget {
//lib/features/home/presentation/widgets/custom_search_view.dart

  final String label;

  const CustomSearchView({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      height: 50,
      child: new Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorsCustom.silver),
          color: Colors.white,
        ),
        child: Center(
          child: new TextFormField(
              controller: searchController,
              textAlign: TextAlign.left,
              //controller: _searchview,
              style: TextStyles.textStyle13,
              decoration: formDecoration.copyWith(
                hintText: "Arama",
                hintStyle: TextStyles.textStyle13,
                suffixIcon: IconButton(
                  onPressed: () {
                    searchController.clear();
                  },
                  icon: Icon(
                    Icons.clear,
                    color: ColorsCustom.gunmetal,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsCustom.velvet,
                ),
              )

              //  textAlign: TextAlign.center,
              ),
        ),
      ),
    );
  }
}
