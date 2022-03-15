import 'package:bloc_test/bloc_test.dart';
import 'package:coding_test/presentation/bloc/main/main_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('main cubit test', () {
    blocTest('initial state', build: () => MainCubit(), expect: () => []);
    blocTest('home state',
        build: () => MainCubit(),
        act: (MainCubit? bloc) => bloc?.changeCurrentPage(0),
        expect: () => [MainStates.home]);
    blocTest('series state',
        build: () => MainCubit(),
        act: (MainCubit? bloc) => bloc?.changeCurrentPage(1),
        expect: () => [MainStates.series]);

  });
}
