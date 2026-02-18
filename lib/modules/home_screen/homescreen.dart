import 'package:flutter/material.dart';
import 'package:jetkir/modules/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:jetkir/modules/widgets/home_screen_widgets/home_imedeately_pay_widget.dart';
import 'package:jetkir/modules/widgets/home_screen_widgets/home_screen_widget.dart';
import 'package:jetkir/modules/widgets/search_widget/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarWidget(isHome: true),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/white_logo.png',
                  // width: 85,
                  height: 120,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          SearchWidget(price: 1.2, userName: 'userName', idCode: '13245677654'),
          SizedBox(height: 20),
          HomeScreenWidget(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: HomeImmediatelyPayWidget(price: 754, days: 5),
          ),
        ],
      ),
    );
  }
}
