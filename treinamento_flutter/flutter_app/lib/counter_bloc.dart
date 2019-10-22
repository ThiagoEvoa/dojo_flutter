import 'package:bloc/bloc.dart';
import 'package:flutter_app/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(event) async* {
    switch (event) {
      case CounterEvent.INCREMENT:
        yield state + 1;
        break;
      default:
        throw Exception('unhandled event: $event');
    }
  }
}
