import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jetkir/layout/bloc/product_card_widget_bloc/bloc/product_card_widget_bloc.dart';
import 'package:jetkir/modules/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:jetkir/modules/widgets/product_card_widget/product_card_widget.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: BlocBuilder<ProductCardWidgetBloc, ProductCardWidgetState>(
        builder: (context, state) {
          return state.cardCount > 0
              ? ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: state.cardCount,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: ProductCardWidget(
                        shtrihCode: 'JT5316579805678',
                        dataInformation: '#C/OSH/2024/03/14',
                      ),
                    );
                  },
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/image/Commerce.png'),
                      Text(
                        'Не найдена',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        'Please ensure the QR code is readable and',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'try scanning again',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
