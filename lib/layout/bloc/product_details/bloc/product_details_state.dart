part of 'product_details_bloc.dart';

abstract class ProductDetailsState {}

class ProductDetailsInitial extends ProductDetailsState {}

class ProductDetailsLoading extends ProductDetailsState {}

class ProductDetailsLoaded extends ProductDetailsState {
  final ProductModel product;

  ProductDetailsLoaded(this.product);
}

class ProductDetailsError extends ProductDetailsState {}
