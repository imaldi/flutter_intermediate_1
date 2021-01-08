class CounterState {
  // int counter;
  final int counter;

  const CounterState({this.counter});
  // CounterState._();
  factory CounterState.initial() => CounterState(counter: 0);
// factory CounterState.initial(){
//   return CounterState._()..counter = 0;
// }
}