import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc
    extends Bloc<BottomNavBarEvent, BottomNavBarState> {

  BottomNavBarBloc() : super(const BottomNavBarInitial()) {

    on<ChangeBottomNavBarEvent>((event, emit) {
      emit(BottomNavBarChanged(event.index));
    });

  }
}