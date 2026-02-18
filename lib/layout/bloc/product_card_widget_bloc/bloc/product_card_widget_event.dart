part of 'product_card_widget_bloc.dart';

@immutable
abstract class ProductCardWidgetEvent {
  const ProductCardWidgetEvent();
}

class ChangeDeliveryStatus extends ProductCardWidgetEvent {
  final int statusIndex;

  const ChangeDeliveryStatus(this.statusIndex);
}

class ProductCardWidgetCountEvent extends ProductCardWidgetEvent {
  final int count;

  const ProductCardWidgetCountEvent(this.count);
}

