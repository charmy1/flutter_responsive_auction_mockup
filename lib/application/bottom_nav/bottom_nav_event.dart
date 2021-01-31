part of 'bottom_nav_bloc.dart';

@freezed
abstract class BottomNavEvent with _$BottomNavEvent {

  const factory BottomNavEvent.homeClick() = HomeClick;
  const factory BottomNavEvent.auctionClick() = AuctionClick;
  const factory BottomNavEvent.buyNowClick() = BuyNowClick;
  const factory BottomNavEvent.profileClick() = ProfileClick;

}
