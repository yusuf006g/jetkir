import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_widget_event.dart';
part 'search_widget_state.dart';

class SearchWidgetBloc extends Bloc<SearchWidgetEvent, SearchWidgetState> {
  SearchWidgetBloc() : super(SearchWidgetInitial()) {
    on<SearchWidgetByBarCodeEvent>((event, emit) async {
      emit(SearchWidgetLoadingState());
      await Future.delayed(Duration(seconds: 1));
      if (event.barcode.isNotEmpty) {
        emit(SearchWidgetSuccessState(result: 'Товар найден'));
      } else {
        emit(SearchWidgetErrorState(message: 'Ведиде код товара'));
      }
    });
  }
}
