import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/global/span_one_state.dart';
import 'package:flutter_bloc_demo/global/span_two_page.dart';

class SpanOneCubit extends Cubit<SpanOneState> {
  SpanOneCubit() : super(SpanOneState().init());

  void init() {
    emit(state.init());
  }

  ///跳转到跨页面
  void toSpanTwo(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SpanTwoPage()));
  }

  ///自增
  void increase() {
    state..count = ++state.count;
    emit(state.clone());
  }
}
