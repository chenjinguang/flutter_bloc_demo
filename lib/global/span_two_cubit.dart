import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/global/span_two_state.dart';

class SpanTwoCubit extends Cubit<SpanTwoState> {
  SpanTwoCubit() : super(SpanTwoState().init());

  void init(BuildContext context){
    emit(state.init());
  }

  ///自增
  void increase() => emit(state.clone()..count = ++state.count);
}
