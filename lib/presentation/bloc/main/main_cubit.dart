import 'package:bloc/bloc.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainStates.home);

  changeCurrentPage(int newValue) {
    emit(MainStates.values[newValue]);
  }
}
