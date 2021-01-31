import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/application/cart_presentation_bloc/cart_presentation_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/injection.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/cart_product_card.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/number_cart.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sized_context/sized_context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'address/cart_address_card.dart';
import 'delivery/cart_delivery_card.dart';
import 'each_process_cart.dart';
import 'payment/cart_payment_card.dart';

class CartBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CartPresentationBloc>()..add(CartPresentationEvent.summary()),
      child: CartBuyWidget(),
    );
  }
}

class CartBuyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.root.pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorsCustom.steel_grey,
          ),
        ),
        actions: <Widget>[
          // oval
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
                height: 20,
                child: Center(
                  child: // 1
                      Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text("1", style: TextStyles.textStyle16),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorsCustom.velvet,
                )),
          )
        ],
        centerTitle: true,
        title: Text("Sepetim", //My Cart
            style: TextStyles.textStyle12,
            textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: boxShadowDecoration,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: context.heightPct(.025),
              ),
              BlocBuilder<CartPresentationBloc, CartPresentationState>(
                buildWhen: (previous, current) {
                  return current is SummaryClick || current is AddressClick;
                },
                builder: (context, state) {
                  bool st = (state is SummaryClick);
                  bool st1 = (state is AddressClick);

                  return Column(
                    children: <Widget>[
                      NumberCartProgressIndicator(
                        color: (st)
                            ? ColorsCustom.velvet
                            : ColorsCustom.steel_grey,
                        done: st1,
                        init: st,
                        stepNumber: "1",
                        stepDescription: "Özet",
                      ),
                      EachProcess(
                        onPressed: () {
                          BlocProvider.of<CartPresentationBloc>(context)
                            ..add(CartPresentationEvent.address());
                        },
                        st: st,
                        st1: st1,
                        widget: CartSummaryCard(),
                      )
                    ],
                  );
                },
              ),
              BlocBuilder<CartPresentationBloc, CartPresentationState>(
                buildWhen: (previous, current) {
                  return current is AddressClick || current is DeliveryClick;
                },
                builder: (context, state) {
                  bool st = (state is AddressClick);
                  bool st1 = (state is DeliveryClick);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      NumberCartProgressIndicator(
                        color: (st)
                            ? ColorsCustom.velvet
                            : ColorsCustom.steel_grey,
                        done: st1,
                        init: st,
                        stepNumber: "2",
                        stepDescription: "Adresler",
                      ),
                      EachProcess(
                        onPressed: () {
                          BlocProvider.of<CartPresentationBloc>(context)
                            ..add(CartPresentationEvent.delivery());
                        },
                        st: st,
                        st1: st1,
                        widget: CartAddressCard(),
                      )
                    ],
                  );
                },
              ),
              BlocBuilder<CartPresentationBloc, CartPresentationState>(
                buildWhen: (previous, current) {
                  return current is DeliveryClick || current is PaymentClick;
                },
                builder: (context, state) {
                  bool st = (state is DeliveryClick);
                  bool st1 = (state is PaymentClick);
                  return Column(
                    children: <Widget>[
                      NumberCartProgressIndicator(
                        color: (st)
                            ? ColorsCustom.velvet
                            : ColorsCustom.steel_grey,
                        done: st1,
                        init: st,
                        stepNumber: "3",
                        stepDescription: "Teslimat", //Delivery
                      ),
                      EachProcess(
                        onPressed: () {
                          BlocProvider.of<CartPresentationBloc>(context)
                            ..add(CartPresentationEvent.payment());
                        },
                        st: st,
                        st1: st1,
                        widget: CartDeliveryCard(),
                      )
                    ],
                  );
                },
              ),
              BlocBuilder<CartPresentationBloc, CartPresentationState>(
                builder: (context, state) {
                  bool st = (state is PaymentClick);
                  bool st1 = false;
                  return Column(
                    children: <Widget>[
                      NumberCartProgressIndicator(
                        color: (st)
                            ? ColorsCustom.velvet
                            : ColorsCustom.steel_grey,
                        done: st1,
                        init: st,
                        stepNumber: "4",
                        stepDescription: "Ödeme", //payment
                      ),
                      EachProcess(
                        onPressed: () {
                          //BlocProvider.of<CartPresentationBloc>(context)
                          // ..add(CartPresentationEvent.payment());
                        },
                        st: st,
                        st1: st1,
                        widget: CartPaymentCard(),
                        processId: 4,
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
