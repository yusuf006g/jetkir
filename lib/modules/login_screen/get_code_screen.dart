import 'package:flutter/material.dart';
import 'package:jetkir/modules/login_screen/comlplete_information.dart';
import 'package:jetkir/modules/login_screen/widget/pin_code_feild.dart';

class GetCodeScreen extends StatelessWidget {
  const GetCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final widthMax = mediaQuery.size.width;
    final theme = Theme.of(context); // ← кэшируем для удобства

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Введите код', style: theme.textTheme.bodyLarge),
            const SizedBox(height: 10),
            Text('Мы отправили код на номер', style: theme.textTheme.bodySmall),
            Text(
              '996700600600 через WhatsApp',
              style: theme.textTheme.bodySmall,
            ),
            const SizedBox(height: 24),
            SizedBox(width: widthMax*0.8, child: PinCodeFeild()),
            const SizedBox(height: 24),
            SizedBox(
              width: widthMax * 0.8,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CompleteInformationScreen(),
                    ),
                  );
                },
                child: const Text('Проверить'),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: widthMax * 0.8,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GetCodeScreen()),
                  );
                },
                child: const Text('Подтвердить через Telegram'),
              ),
            ),

            const SizedBox(height: 8),
            SizedBox(
              width: widthMax * 0.8,
              height: 60,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Подтвердить через WhatsApp'),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: widthMax * 0.8,
              height: 60,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Подтвердить через SMS'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
