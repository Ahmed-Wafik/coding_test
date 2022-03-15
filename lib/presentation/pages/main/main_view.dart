import 'package:coding_test/presentation/bloc/main/main_cubit.dart';
import 'package:coding_test/presentation/pages/classes/classes_view.dart';
import 'package:coding_test/presentation/pages/home/home_view.dart';
import 'package:coding_test/presentation/pages/my_practice/my_pratices_view.dart';
import 'package:coding_test/presentation/pages/series/series_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alo Moves')),
      body: BlocBuilder<MainCubit, MainStates>(
        builder: (_, state) {
          switch (state) {
            case MainStates.home:
              return const HomeView();
            case MainStates.series:
              return const SeriesView();
            case MainStates.classes:
              return const ClassesView();
            case MainStates.myPractices:
              return const MyPracticeView();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.select((MainCubit bloc) => bloc.state.index),
        fixedColor: Colors.blue,
        onTap: (index) {
          context.read<MainCubit>().changeCurrentPage(index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline), label: 'Series'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_media), label: 'Classes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: 'My Practices'),
        ],
      ),
    );
  }
}
