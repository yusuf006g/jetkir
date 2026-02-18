import 'package:bloc/bloc.dart';
import 'package:jetkir/core/storage/dio/dio_service.dart';
import 'package:jetkir/models/product_model/product_model.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {

  final ProductRepository repository;

  ProductDetailsBloc(this.repository)
      : super(ProductDetailsInitial()) {

    on<GetProductByBarcode>((event, emit) async {
      emit(ProductDetailsLoading());

      try {
        final product =
            await repository.getByBarcode(event.trackingNumber);

        emit(ProductDetailsLoaded(product));
		on<GetProductByBarcode>(_getProductByBarcode);
      } catch (e) {
        emit(ProductDetailsError());
      }
    });
  }

	//* GetProductByBarcode
	Future<void> _getProductByBarcode(GetProductByBarcode event, Emitter<ProductDetailsState> emit) async {}
}
