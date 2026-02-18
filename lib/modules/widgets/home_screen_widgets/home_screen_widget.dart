import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// 🔝 Верхние кнопки
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _TopButton(
                icon: 'assets/icon/carbon_delivery-add (1).svg',
                text: 'Доставка',
              ),
              _TopButton(
                icon: 'assets/icon/bx_map.svg',
                text: 'Адрес',
              ),
              _TopButton(
                icon: 'assets/icon/f7_money-dollar-circle.svg',
                text: 'Тарифы',
              ),
              _TopButton(
                icon: 'assets/icon/mage_phone-call (1).svg',
                text: 'Оператор',
              ),
            ],
          ),
        ),

        /// 🟦 Grid (ВАЖНО: shrinkWrap + no scroll)
        GridView.count(
          padding: const EdgeInsets.all(12),
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.8,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeMainWidgets(
              mainText: 'В китае',
              mainSvg: 'assets/icon/emojione-v1_flag-for-china.svg',
              count: 17,
              isColor: Color(0xffF14545),
              containerColor: Color(0xffFEE9E9),
            ),
            HomeMainWidgets(
              mainText: 'В пути',
              mainSvg: 'assets/icon/carbon_delivery-add (2).svg',
              count: 25,
              isColor: Color(0xff4640FF),
              containerColor: Color(0xffEEF0FF),
            ),
            HomeMainWidgets(
              mainText: 'Готов к выдаче',
              mainSvg: 'assets/icon/fluent-mdl2_issue-tracking.svg',
              count: 14,
              isColor: Color(0xffFFAE43),
              containerColor: Color(0xffFFF4E0),
            ),
            HomeMainWidgets(
              mainText: 'Выдан',
              mainSvg: 'assets/icon/octicon_issue-closed-16 (1).svg',
              count: 11,
              isColor: Color(0xff25BA28),
              containerColor: Color(0xffE7F8E8),
            ),
          ],
        ),
      ],
    );
  }
}
class _TopButton extends StatelessWidget {
  final String icon;
  final String text;

  const _TopButton({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: const Color(0xffF6F6F6),
        highlightColor: const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Container(
          color: const Color(0xffF6F6F6),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(height: 6),
                Text(
                  text,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeMainWidgets extends StatelessWidget {
  final String mainText;
  final String mainSvg;
  final int count;
  final Color isColor;
  final Color containerColor;
  final VoidCallback? onTap;

  const HomeMainWidgets({
    super.key,
    required this.mainText,
    required this.mainSvg,
    required this.count,
    required this.isColor,
    required this.containerColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: containerColor,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        splashColor: isColor.withOpacity(0.2),
        highlightColor: isColor.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                mainSvg,
                width: 22,
                height: 22,
                colorFilter: ColorFilter.mode(isColor, BlendMode.srcIn),
              ),
              const SizedBox(height: 12),
              Text(
                '$count',
                style: TextStyle(
                  color: isColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                mainText,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
