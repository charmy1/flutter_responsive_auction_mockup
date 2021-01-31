import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_presentation_event.dart';

part 'cart_presentation_state.dart';

part 'cart_presentation_bloc.freezed.dart';

@injectable
class CartPresentationBloc
    extends Bloc<CartPresentationEvent, CartPresentationState> {
  //CartPresentationBloc(CartPresentationState initialState) : super(initialState);

  CartPresentationBloc() : super(CartPresentationState.noClick());






  @override
  Stream<CartPresentationState> mapEventToState(
    CartPresentationEvent event,
  ) async* {
    yield* event.map(
      summary: (e) async* {
        yield SummaryClick();

      },
      address: (e) async* {

        yield AddressClick();
      },
      delivery: (e) async* {
        yield DeliveryClick();
      },
      payment: (e) async* {
        yield PaymentClick();
      },
    );
  }
}
