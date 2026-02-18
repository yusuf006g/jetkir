import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jetkir/layout/bloc/splash_bloc/bloc/splash_bloc.dart';
import 'package:jetkir/modules/login_screen/login_screen.dart';
import 'package:jetkir/modules/main_layout_screen/main_layout_screen.dart';

class SplashTwoScreen extends StatelessWidget {
  const SplashTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final storage = FlutterSecureStorage();

    return BlocProvider(
      create: (_) => SplashBloc(storage: storage)..add(CheckToken()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashAuthorized) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const MainLayoutScreen()),
              );
            } else if (state is SplashUnauthorized) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const LoginScreen()),
              );
            }
          },
          child: Center(
            child: Image.asset(
              'assets/image/purple_logo.png',
              width: 180,
            ),
          ),
        ),
      ),
    );
  }
}
