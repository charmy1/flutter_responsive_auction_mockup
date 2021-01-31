part of 'bottom_nav_bloc.dart';

@freezed

abstract class BottomNavState with _$BottomNavState {


  @factoryMethod
  const factory BottomNavState.homeState() = HomeState;
  const factory BottomNavState.auctionState() = AuctionState;
  const factory BottomNavState.buyNowState() = BuyNowState;
  const factory BottomNavState.profileState() = ProfileState;

}


