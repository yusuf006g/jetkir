part of 'app_bar_bloc.dart';

@immutable
abstract class AppBarEvent {}

class AppBarShowEvent extends AppBarEvent{}

class AppBarHideEvent extends AppBarEvent{}
