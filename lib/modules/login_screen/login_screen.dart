import 'package:flutter/material.dart';
import 'package:jetkir/modules/login_screen/get_code_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // int _selectedTab = 0; // ← состояние вынесено в класс

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final widthMax = mediaQuery.size.width;
    final theme = Theme.of(context); // ← кэшируем для удобства

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/image/purple_logo.png', width: 87, height: 103),
            const SizedBox(height: 16),
            Text('Вход в систему', style: theme.textTheme.bodySmall),
            const SizedBox(height: 16),
            // SizedBox(
            //   height: 55,
            //   width: widthMax * 0.8,
            //   child: MessageTabs(
            //     initialIndex: _selectedTab,
            //     onChanged: (index) => setState(() => _selectedTab = index),
            //   ),
            // ),
            const SizedBox(height: 24),
            SizedBox(
              height: 55,
              width: widthMax * 0.8,
              child: TextField(
                
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface, // явно задаём цвет текста
                ),
                decoration: InputDecoration(
                  hintText: "+996",
                  
                  hintStyle: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: theme.colorScheme.outline),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 2,
                    ),
                  ),
                ),
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
                child: const Text('Войти'),
              ),
            ),
            const SizedBox(height: 16),
            Text('Или', style: theme.textTheme.bodyMedium),
            const SizedBox(height: 8),
            SizedBox(
              width: widthMax * 0.8,
              height: 60,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Войти через Google'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
