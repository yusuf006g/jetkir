import 'package:flutter/material.dart';
import 'package:jetkir/shared/style/themas.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInformation extends StatelessWidget {
  const AppInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'О приложении',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(height: 40,),
            Text('О приложении', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 20,),
            Text(
              'Приложение Jetkir Cargo позволяет удобно отслеживать доставку, управлять заказами и получать актуальную информацию в одном месте.',
              softWrap: true,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 40,),
            Text(
              'Разработка приложения',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20,),
            Text(
              'Приложение разработано в компанией PROlab',
              softWrap: true,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                Text('Сайт: '),
                GestureDetector(
                  onTap: () async {
                    final url = Uri.parse('https://prolabagency.com');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    }
                  },
                  child: Text(
                    'prolabagency.com',
                    style: TextStyle(
                      color: Themas.blueColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image/Blue-White 1.png')
              ],
            )
          ],
        ),
      ),
    );
  }
}
