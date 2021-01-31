part of 'cart_presentation_bloc.dart';

@freezed
abstract class CartPresentationState with _$CartPresentationState {
  const factory CartPresentationState.noClick() = NoClick;

  const factory CartPresentationState.summaryClick() = SummaryClick;

  const factory CartPresentationState.addressClick() = AddressClick;

  const factory CartPresentationState.deliveryClick() = DeliveryClick;

  ///const factory CartPresentationState.deliveryDone() = DeliveryDone;

  const factory CartPresentationState.paymentClick() = PaymentClick;
// const factory CartPresentationState.paymentDone() = PaymentDone;
}
