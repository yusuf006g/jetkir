import 'package:flutter/material.dart';
import 'package:jetkir/modules/main_layout_screen/main_layout_screen.dart';

class CompleteInformationScreen extends StatefulWidget {
  const CompleteInformationScreen({super.key});

  @override
  State<CompleteInformationScreen> createState() =>
      _CompleteInformationScreenState();
}

class _CompleteInformationScreenState extends State<CompleteInformationScreen> {
  // int _selectedTab = 0; // ← состояние вынесено в класс

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
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
            Text('Регистрация', style: theme.textTheme.bodySmall),
            const SizedBox(height: 24),
            SizedBox(
              height: 55,
              width: widthMax * 0.8,
              child: TextField(
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface, // явно задаём цвет текста
                ),
                decoration: InputDecoration(
                  hintText: "Имя",

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
            const SizedBox(height: 16),
            SizedBox(
              height: 55,
              width: widthMax * 0.8,
              child: TextField(
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface, // явно задаём цвет текста
                ),
                decoration: InputDecoration(
                  hintText: "Фамилия",

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
            const SizedBox(height: 16),
            SizedBox(
              height: 55,
              width: widthMax * 0.8,
              child: TextField(
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface, // явно задаём цвет текста
                ),
                decoration: InputDecoration(
                  hintText: "Выберите ваш регион",

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
            const SizedBox(height: 16),
            
            SizedBox(
              height: 55,
              width: widthMax * 0.8,
              child: TextField(
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface, // явно задаём цвет текста
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.date_range),
                  hintText: "15-01-2004",

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
            const SizedBox(height: 16),

            // SizedBox(
            //   height: 55,
            //   width: widthMax * 0.8,
            //   child: MessageProperty('name', message = t)
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() => isChecked = value!);
                  },
                  checkColor: Colors.white, // галочка видима
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.blue; // фон при выборе
                    }
                    return Colors.transparent; // фон без выбора
                  }),
                ),
                Column(
                  children: [
                    Text(
                      'Создавая учетную запись, вы соглашаетесь',
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      'с нашей Политикой Конфиденциальности',
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),
            SizedBox(
              width: widthMax * 0.8,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainLayoutScreen()),
                  );
                },
                child: const Text('Далее'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
