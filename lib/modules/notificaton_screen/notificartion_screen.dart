import 'package:flutter/material.dart';
import 'package:jetkir/modules/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:jetkir/modules/widgets/nitification_card/notification_cart_widget.dart';

class NotificartionScreen extends StatelessWidget {
  const NotificartionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: ListView(
        children: [
          NotificationCardWidget(),
        ],
      )
    );
  }
}