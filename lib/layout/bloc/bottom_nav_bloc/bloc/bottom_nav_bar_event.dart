part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarEvent {}

class ChangeBottomNavBarEvent extends BottomNavBarEvent {
  final int index;

  ChangeBottomNavBarEvent(this.index);
}
