import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jetkir/layout/bloc/product_card_widget_bloc/bloc/product_card_widget_bloc.dart';
import 'package:jetkir/modules/widgets/product_card_widget/bar_code_widget.dart';
import 'package:jetkir/modules/widgets/product_card_widget/product_infotmation_card_widget.dart';
import 'package:jetkir/shared/style/themas.dart';

class ProductCardWidget extends StatelessWidget {
  final String shtrihCode;
  final String dataInformation;

  const ProductCardWidget({
    super.key,
    required this.shtrihCode,
    required this.dataInformation,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductInfotmationCardWidget(
              from: 'from',
              to: 'to',
              shtrihCode: shtrihCode,
              price: 324,
              battens: true,
              dataInformation: dataInformation,
              weight: 0.5,
              package: 'package',
            ),
          ),
        );
      },
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
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
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
          
                  const SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
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
                  return SimpleStepLine(
                    currentIndex: state.deliveryStatusIndex,
                  );
                },
              ),
          
              const SizedBox(height: 8),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<ProductCardWidgetBloc, ProductCardWidgetState>(
                    builder: (context, state) {
                      final statusTexts = {
                        0: 'На складе в Китае',
                        1: 'В пути',
                        2: 'На складе в Кыргызстане готов к выдаче',
                      };
          
                      return Text(
                        statusTexts[state.deliveryStatusIndex] ?? '',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleStepLine extends StatelessWidget {
  final int currentIndex;

  const SimpleStepLine({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildStep(step: 0),
        _buildLine(nextStep: 1),
        _buildStep(step: 1),
        _buildLine(nextStep: 2),
        _buildStep(step: 2),
        _buildLine(nextStep: 3),
        _buildStep(step: 3),
      ],
    );
  }

  Color _getActiveColor() {
    return currentIndex < 1 ? Colors.blue : Themas.greenColor;
  }

  Widget _buildStep({required int step}) {
    final bool isDone = currentIndex > step;
    final bool isActive = currentIndex == step;
    final Color activeColor = _getActiveColor();

    return Container(
      width: 24,
      height: 24,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isDone || isActive ? activeColor : Colors.white,
        border: Border.all(color: activeColor, width: 2),
      ),
      child: isDone
          ? const Icon(Icons.check, size: 14, color: Colors.white)
          : null,
    );
  }

  Widget _buildLine({required int nextStep}) {
    final bool isActive = currentIndex >= nextStep;
    final Color lineColor = _getActiveColor();

    return Expanded(
      child: Container(
        height: 2,
        color: isActive ? lineColor : lineColor.withOpacity(0.3),
      ),
    );
  }
}
