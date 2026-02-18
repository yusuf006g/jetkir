import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_card_widget_event.dart';
part 'product_card_widget_state.dart';

class ProductCardWidgetBloc
    extends Bloc<ProductCardWidgetEvent, ProductCardWidgetState> {
  ProductCardWidgetBloc()
    : super(const ProductCardWidgetState(deliveryStatusIndex: 2, cardCount: 10)) {
    on<ChangeDeliveryStatus>((event, emit) {
      emit(state.copyWith(deliveryStatusIndex: event.statusIndex));
    });
    on<ProductCardWidgetCountEvent>((event, emit) {
      emit(state.copyWith(cardCount: event.count));
    });
  }
}
