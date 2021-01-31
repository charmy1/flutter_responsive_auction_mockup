import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

part 'bottom_nav_event.dart';

part 'bottom_nav_state.dart';

part 'bottom_nav_bloc.freezed.dart';

@injectable
class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  //BottomNavBloc(BottomNavState initialState) : super(initialState);

 BottomNavBloc() : super(BottomNavState.homeState());

 //BottomNavState get initialState => BottomNavState.homeState();

  @override
  void onTransition(Transition<BottomNavEvent, BottomNavState> transition) {
    super.onTransition(transition);
  }

  @override
  Stream<BottomNavState> mapEventToState(
    BottomNavEvent event,
  ) async* {
    yield* event.map(
      homeClick: (e) async* {
        yield HomeState();
      },
      auctionClick: (e) async* {
        yield AuctionState();
      },
      buyNowClick: (e) async* {
        yield BuyNowState();
      },
      profileClick: (e) async* {
        yield ProfileState();
      },
    );
  }
}
