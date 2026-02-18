import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jetkir/layout/bloc/profile_bloc/bloc/profile_bloc.dart';
import 'package:jetkir/models/user_profile_model.dart';
import 'package:jetkir/modules/profile_screen/screens/app_information.dart';
import 'package:jetkir/modules/profile_screen/widgets/main_profile.dart';
import 'package:jetkir/modules/profile_screen/widgets/profile_item.dart';
import 'package:jetkir/modules/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:jetkir/shared/network/profile_repository.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileBloc(ProfileRepository())..add(LoadProfile()),
      child: const _ProfileView(),
    );
  }
}


class _ProfileView extends StatelessWidget {
  const _ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: const AppBarWidget(isHome: false),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          // 🔹 Показать индикатор загрузки
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          // 🔹 Показать ошибку
          if (state.error != null) {
            return Center(child: Text(state.error!));
          }

          // 🔹 Данные профиля получены
          if (state.data != null) {
            final profiles = state.data as List<UserProfileModel>;
            final profile = profiles.isNotEmpty ? profiles[0] : null;

            return ListView(
              children: [
                if (profile != null)
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: MainProfile(
                      profileImage: profile.image ??
                          'assets/image/f5ea9148e40d1c93c3c447aa4f6993b92a86c0b6.png',
                      name: profile.lastName ?? 'Не указано',
                      surname: profile.firstName ?? 'Не указано',
                      number: profile.phone,
                    ),
                  ),
                const SizedBox(height: 8),
                
                // Пример использования данных в ProfileItem
                ProfileItem(
                  title: 'Мой профиль',
                  leadingIcon: 'assets/icon/iconamoon_profile-light.svg',
                  onTap: () {
                    // Навигация на страницу профиля
                  },
                ),
                ProfileItem(
                  title: 'Мои адреса',
                  leadingIcon: 'assets/icon/mdi_address-marker-outline.svg',
                  onTap: () {},
                ),
                ProfileItem(
                  title: 'О приложении',
                  leadingIcon: 'assets/icon/tabler_circle-letter.svg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const AppInformation()),
                    );
                  },
                ),
                const SizedBox(height: 16),
              ],
            );
          }

          // 🔹 Пока нет данных
          return const SizedBox();
        },
      ),
    );
  }
}
