import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>((ref) {
    return AppStateNotifier();
});

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(AppState());

  void increment(){
    var newState = AppState();
    newState.pokemoney = state.pokemoney +1;
    state = newState;
  }

  void acheter(){
    var newState = AppState();
    newState.pokemoney = state.pokemoney - 10;
    state = newState;
  }
  void buy(){
    var newState = AppState();
    newState.pokemoney = state.pokemoney - 10;
    state = newState;
  }
}


class AppState {
  int pokemoney = 0;
}