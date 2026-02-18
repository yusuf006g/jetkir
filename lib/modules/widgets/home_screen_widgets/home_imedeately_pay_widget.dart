import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jetkir/shared/style/themas.dart';

class HomeImmediatelyPayWidget extends StatelessWidget {
  final int price;
  final int days;
  final VoidCallback? onPay;

  const HomeImmediatelyPayWidget({
    super.key,
    required this.price,
    required this.days,
    this.onPay,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// 🔴 Информационный контейнер
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Themas.badColor),
            borderRadius: BorderRadius.circular(16),
            color: Themas.containerRedBackgroundColor,
          ),
          child: Column(
            children: [
              /// 💰 К оплате
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icon/dollor_mark.svg',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'К оплате  ',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '$price сом',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Themas.badColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              const Divider(
                height: 20, // отступ сверху и снизу
                thickness: 1, // толщина линии
                color: Colors.grey,
              ),

              const SizedBox(height: 12),

              /// ⚠️ Важно
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icon/mingcute_time-line.svg',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Важно:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Themas.badColor,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'Срок бесплатного хранения — $days дней',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        /// 🟣 Кнопка оплаты
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color(0xffFF2E32),
              ),
            ),

            onPressed: onPay,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Оплатить через ELQR ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SvgPicture.asset('assets/icon/tabler_credit-card-pay.svg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
