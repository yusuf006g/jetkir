import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jetkir/layout/bloc/bottom_nav_bloc/bloc/bottom_nav_bar_bloc.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.currentIndex,
          onTap: (index) {
            context.read<BottomNavBarBloc>().add(
              ChangeBottomNavBarEvent(index),
            );
          },
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                state.currentIndex == 0
                    ? 'assets/icon/Vector (17).svg'
                    : 'assets/icon/Vector (10).svg',
              ),
              label: 'Товары',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                state.currentIndex == 1
                    ? 'assets/icon/Vector (16).svg'
                    : 'assets/icon/Vector (11).svg', // замените на неактивную иконку
              ),
              label: 'Профиль',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                state.currentIndex == 2
                    ? 'assets/icon/clarity_notification-solid.svg'
                    : 'assets/icon/clarity_notification-solid (1).svg', // замените на неактивную иконку
              ),
              label: 'Корзина',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                state.currentIndex == 3
                    ? 'assets/icon/Vector (14).svg'
                    : 'assets/icon/Vector (12).svg', // замените на неактивную иконку
              ),
              label: 'Настройки',
            ),
          ],
        );
      },
    );
  }
}