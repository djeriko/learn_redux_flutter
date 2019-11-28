import 'package:learn_redux_flutter/redux/actions/counter_actions.dart';
import 'package:learn_redux_flutter/redux/stores/counter_state.dart';

CounterState counterStateReducer(CounterState prevState, dynamic action) {
  if (action is IncrementAction) {
    print(prevState.count);
    return _increment(prevState, action.amount);
  }
  return prevState;
}

CounterState _increment(CounterState prevState, int amount) {
  prevState.count += amount;
  return prevState;
}
