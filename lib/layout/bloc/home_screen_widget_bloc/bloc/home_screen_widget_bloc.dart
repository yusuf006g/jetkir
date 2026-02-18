import 'package:bloc/bloc.dart';

part 'home_screen_widget_event.dart';
part 'home_screen_widget_state.dart';

class HomeScreenWidgetBloc extends Bloc<HomeScreenWidgetEvent, HomeScreenWidgetState> {
  HomeScreenWidgetBloc() : super(HomeScreenWidgetInitial()) {
    on<HomeScreenWidgetEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
