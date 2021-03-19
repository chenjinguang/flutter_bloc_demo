import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/main_page.dart';
import 'package:flutter_bloc_demo/cubit/counter_page.dart';
import 'package:flutter_bloc_demo/global/span_one_cubit.dart';
import 'package:flutter_bloc_demo/global/span_one_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainPage(),//bloc demo
      // home: CounterPage(),//cubit demo
      home: SpanOnePage(),//global demo
      builder: (BuildContext context,Widget child){
        return MultiBlocProvider(
            providers: [
              BlocProvider<SpanOneCubit>(
                  create: (BuildContext context) =>SpanOneCubit()),
            ],
            child: child
        );
      },
    );
  }
}


