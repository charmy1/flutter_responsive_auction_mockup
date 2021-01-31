part of 'cart_presentation_bloc.dart';

@freezed
abstract class CartPresentationEvent with _$CartPresentationEvent {
  const factory CartPresentationEvent.summary() = Summary;

  const factory CartPresentationEvent.address() = Address;


  const factory CartPresentationEvent.delivery() = Delivery;

  const factory CartPresentationEvent.payment() = Payment;


}
