part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarState {
  final int currentIndex;

  const BottomNavBarState(this.currentIndex);
}

class BottomNavBarInitial extends BottomNavBarState {
  const BottomNavBarInitial() : super(0);
}

class BottomNavBarChanged extends BottomNavBarState {
  const BottomNavBarChanged(int index) : super(index);
}
