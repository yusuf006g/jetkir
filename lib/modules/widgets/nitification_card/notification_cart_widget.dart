import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Категория',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '1 мин назад',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text(
                'Поступление заказов до 23 августа',
                style: Theme.of(context).listTileTheme.titleTextStyle
              ),
              SizedBox(height: 8),
              Text(
                'Поступление заказов до 23 августа',
                style: Theme.of(context).listTileTheme.subtitleTextStyle
              ),
            ],
          ),
        );
      },
    );
  }
}
