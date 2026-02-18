import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jetkir/core/storage/dio/dio_service.dart';
import 'package:jetkir/layout/bloc/app_bar_bloc/bloc/app_bar_bloc.dart';
import 'package:jetkir/layout/bloc/auth_bloc/bloc/auth_bloc.dart';
import 'package:jetkir/layout/bloc/bottom_nav_bloc/bloc/bottom_nav_bar_bloc.dart';
import 'package:jetkir/layout/bloc/product_card_widget_bloc/bloc/product_card_widget_bloc.dart';
import 'package:jetkir/layout/bloc/profile_bloc/bloc/profile_bloc.dart';
import 'package:jetkir/layout/bloc/search_widget/bloc/search_widget_bloc.dart';
import 'package:jetkir/modules/splash/splash_screen.dart';
import 'package:jetkir/shared/style/themas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavBarBloc()),
        BlocProvider(create: (_) => AuthBloc()),
        BlocProvider(create: (_) => AppBarBloc()),
        BlocProvider(create: (_) => SearchWidgetBloc()),
        BlocProvider(create: (_) => ProductCardWidgetBloc()),
        RepositoryProvider(create: (_) => ProductRepository()),
      ],
      child: MaterialApp(home: SplashScreen(), theme: darkTheme),
    );
  }
}
