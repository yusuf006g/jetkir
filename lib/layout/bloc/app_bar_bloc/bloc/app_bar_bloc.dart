import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_bar_event.dart';
part 'app_bar_state.dart';

class AppBarBloc extends Bloc<AppBarEvent, AppBarState> {
  AppBarBloc() : super(AppBarExpanded()) {
    on<AppBarShowEvent>((event, emit) => emit(AppBarExpanded()));
    on<AppBarHideEvent>((event, emit) => emit(AppBarCollapsed()));
  }
}
