import 'package:coding_test/di/di.dart';
import 'package:coding_test/presentation/bloc/main/main_cubit.dart';
import 'package:coding_test/presentation/bloc/series/series_cubit.dart';
import 'package:coding_test/presentation/pages/main/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUpLocators();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainCubit()),
        BlocProvider(create: (_) => SeriesCubit(locator.get())),
      ],
      child: MaterialApp(
        title: 'Alo Moves',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: const MainView(),
      ),
    );
  }
}
