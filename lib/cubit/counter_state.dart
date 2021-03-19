class CounterState {

  int count = 0;

  CounterState init(){
    return CounterState()..count = 0;
  }

  CounterState clone(){
    return CounterState()..count = count;
  }
}

