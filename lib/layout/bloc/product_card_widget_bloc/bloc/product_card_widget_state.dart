part of 'product_card_widget_bloc.dart';

@immutable
class ProductCardWidgetState {
  final int deliveryStatusIndex;
  final int cardCount;

  const ProductCardWidgetState({
    required this.deliveryStatusIndex,
    required this.cardCount,
  });

  ProductCardWidgetState copyWith({
    int? deliveryStatusIndex,
    int? cardCount,
  }) {
    return ProductCardWidgetState(
      deliveryStatusIndex:
          deliveryStatusIndex ?? this.deliveryStatusIndex,
      cardCount: cardCount ?? this.cardCount,
    );
  }
}
