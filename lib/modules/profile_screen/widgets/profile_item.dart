import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String leadingIcon;
  final VoidCallback? onTap;

  const ProfileItem({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(58),
        child: InkWell(
          borderRadius: BorderRadius.circular(58),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                SvgPicture.asset(
                  leadingIcon,
                  width: 22,
                  height: 22,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff242424),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xff9E9E9E),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
