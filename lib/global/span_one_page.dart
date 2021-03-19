import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/global/span_one_cubit.dart';
import 'package:flutter_bloc_demo/global/span_one_state.dart';

class SpanOnePage extends StatefulWidget {
  @override
  _SpanOnePageState createState() => _SpanOnePageState();
}

class _SpanOnePageState extends State<SpanOnePage> {

  @override
  void initState() {
    BlocProvider.of<SpanOneCubit>(context).init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpanOneCubit, SpanOneState>(builder: _body);
  }

  Widget _body(BuildContext context, SpanOneState state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('跨页面-One')),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            BlocProvider.of<SpanOneCubit>(context).toSpanTwo(context),
        child: const Icon(Icons.arrow_forward_outlined),
      ),
      body: Center(
        child: Text(
          'SpanTwoPage点击了 ${state.count} 次',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
