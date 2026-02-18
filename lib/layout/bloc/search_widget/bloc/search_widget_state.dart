part of 'search_widget_bloc.dart';

@immutable
abstract class SearchWidgetState {}

class SearchWidgetInitial extends SearchWidgetState {}

class SearchWidgetLoadingState extends SearchWidgetState{}

class SearchWidgetSuccessState extends SearchWidgetState {
  final String result;

  SearchWidgetSuccessState({required this.result});
}

class SearchWidgetErrorState extends SearchWidgetState {
  final String message;

  SearchWidgetErrorState({required this.message});
}
