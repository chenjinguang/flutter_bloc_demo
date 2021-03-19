import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/global/span_one_cubit.dart';
import 'package:flutter_bloc_demo/global/span_two_cubit.dart';
import 'package:flutter_bloc_demo/global/span_two_state.dart';

class SpanTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpanTwoCubit()..init(context),
      child: BlocBuilder<SpanTwoCubit, SpanTwoState>(builder: _body),
    );
  }

  Widget _body(BuildContext context, SpanTwoState state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('跨页面-Two')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //改变SpanOneCubit模块数据
          BlocProvider.of<SpanOneCubit>(context).increase();

          //改变当前页面数据
          BlocProvider.of<SpanTwoCubit>(context).increase();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          '当前点击了 ${state.count} 次',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
