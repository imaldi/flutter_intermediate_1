import 'package:bloc/bloc.dart';
import 'package:flutter_intermediate_1/counter_state.dart';
import 'package:flutter_intermediate_1/counter_event.dart';


class CounterBloc extends Bloc<CounterEvent,CounterState>{

  void onIncrement(){
    dispatch(IncrementEvent());
  }

  void onDecrement(){
    dispatch(DecrementEvent());
  }

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(
      CounterState currentState,
      CounterEvent event,
      ) async* {
    final _currentState = currentState;
    if (event is IncrementEvent) {
      yield CounterState(counter: _currentState.counter + 1);
    } else if (event is DecrementEvent) {
      yield CounterState(counter: _currentState.counter - 1);
    }
  }

}