part of 'product_details_bloc.dart';

abstract class ProductDetailsEvent {}

class GetProductByBarcode extends ProductDetailsEvent {
  final String trackingNumber;

  GetProductByBarcode(this.trackingNumber);
}
