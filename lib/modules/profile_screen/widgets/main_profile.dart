import 'package:flutter/material.dart';
import 'package:jetkir/shared/style/themas.dart';

class MainProfile extends StatelessWidget {
  final String profileImage;
  final String name;
  final String surname;
  final String number;

  const MainProfile({
    super.key,
    required this.profileImage,
    required this.name,
    required this.surname,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 36, backgroundImage: AssetImage(profileImage, )),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(name, style: Themas.userNameText),
                const SizedBox(width: 4),
                Text(surname, style: Themas.userNameText),
              ],
            ),
            const SizedBox(height: 4),
            Text(number, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
