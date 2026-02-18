part of 'search_widget_bloc.dart';

@immutable
abstract class SearchWidgetEvent {}

class SearchWidgetByBarCodeEvent extends SearchWidgetEvent {
  final String barcode;

  SearchWidgetByBarCodeEvent({required this.barcode});
}
