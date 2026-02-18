import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jetkir/layout/bloc/bottom_nav_bloc/bloc/bottom_nav_bar_bloc.dart';
import 'package:jetkir/modules/delivery_screen/delivery_screen.dart';
import 'package:jetkir/modules/home_screen/homescreen.dart';
import 'package:jetkir/modules/notificaton_screen/notificartion_screen.dart';
import 'package:jetkir/modules/profile_screen/profile_screen.dart';
import 'package:jetkir/modules/widgets/bottom_nav_widget/bottom_nav_bar_widget.dart';

class MainLayoutScreen extends StatelessWidget {
  const MainLayoutScreen({super.key});

  static const screens = [
    HomeScreen(),
    DeliveryScreen(),
    NotificartionScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.currentIndex,
            children: screens,
          ),
          bottomNavigationBar: const BottomNavBarWidget(),
        );
      },
    );
  }
}
