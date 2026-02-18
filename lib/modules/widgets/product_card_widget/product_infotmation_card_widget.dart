// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:jetkir/layout/bloc/product_card_widget_bloc/bloc/product_card_widget_bloc.dart';
import 'package:jetkir/modules/widgets/product_card_widget/bar_code_widget.dart';
import 'package:jetkir/modules/widgets/product_card_widget/product_card_widget.dart';
import 'package:jetkir/shared/style/themas.dart';

class ProductInfotmationCardWidget extends StatelessWidget {
  final String from;
  final String to;
  final String shtrihCode;
  final double price;
  final bool battens;
  final String dataInformation;
  final double weight;
  final String package;
  const ProductInfotmationCardWidget({
    Key? key,
    required this.from,
    required this.to,
    required this.shtrihCode,
    required this.price,
    required this.battens,
    required this.dataInformation,
    required this.weight,
    required this.package,
  }) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Отследить посылку', style: Theme.of(context).textTheme.bodyLarge,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SvgPicture.asset('assets/icon/Group (3).svg'),
                    ),
                    const SizedBox(width: 12), // Добавил отступ
                    Column(
                      children: [
                        Text(
                          shtrihCode,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          dataInformation,
                          style: TextStyle(color: Colors.grey[600], fontSize: 14),
                        ),
                      ],
                    ),
                    Spacer(),
        
                    const SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (context) {
                              return const BarCodeWidget(
                                name: '',
                                id: 'JT5316579805678',
                              );
                            },
                          );
                        },
                        child: SvgPicture.asset(
                          'assets/icon/barcode-svgrepo-com.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
        
                BlocBuilder<ProductCardWidgetBloc, ProductCardWidgetState>(
                  builder: (context, state) {
                    return SimpleStepLine(currentIndex: state.deliveryStatusIndex);
                  },
                ),
        
                const SizedBox(height: 8),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // BlocBuilder<ProductCardWidgetBloc, ProductCardWidgetState>(
                    //   builder: (context, state) {
                    //     final statusTexts = {
                    //       0: 'На складе в Китае',
                    //       1: 'В пути',
                    //       2: 'На складе в Кыргызстане готов к выдаче',
                    //     };
        
                    //     return Text(
                    //       statusTexts[state.deliveryStatusIndex] ?? '',
                    //       style: const TextStyle(
                    //         fontSize: 12,
                    //         color: Colors.grey,
                    //       ),
                    //     );
                    //   },
                    // ),
                    const SizedBox(height: 20),
                    Text('Формируется', style: Themas.cardWidthText),
                  ],
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Откуда', style: Themas.cardblueText),
                        Text(from, style: Themas.cardblackText),
                      ],
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Куда', style: Themas.cardblueText),
                        Text(to, style: Themas.cardblackText),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SvgPicture.asset('assets/icon/Group 1171274979.svg'),
                    SizedBox(width: 20),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Сумма к оплате', style: Themas.cardblueText),
                        Row(
                          children: [
                            Text(price.toString(), style: Themas.cardblackText),
                            Text(' сом (наличные)', style: Themas.cardblackText),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SvgPicture.asset('assets/icon/carbon_delivery-add (3).svg'),
                    SizedBox(width: 20),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Способ получения', style: Themas.cardblueText),
                        Row(
                          children: [
                            Text('Выберите формат', style: Themas.cardblackText),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SvgPicture.asset('assets/icon/Group (3).svg'),
                    SizedBox(width: 20),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Наличие обрешетки', style: Themas.cardblueText),
                        Row(
                          children: [
                            Text(
                              battens ? 'Да' : 'Нет',
                              style: Themas.cardblackText,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      width: 76,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Выбрать', style: TextStyle(fontSize: 13),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SvgPicture.asset('assets/icon/Group (3).svg'),
                    SizedBox(width: 20),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Посылка: $weight кг ',
                              style: Themas.cardblackText,
                            ),
                          ],
                        ),
                        Text('Параметры груза', style: Themas.cardblueText),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SvgPicture.asset('assets/icon/Group (3).svg'),
                    SizedBox(width: 20),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Упаковка', style: Themas.cardblueText),
                        Text(package, style: Themas.cardblackText),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
