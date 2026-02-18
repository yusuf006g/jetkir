import 'package:dio/dio.dart';
import 'package:jetkir/core/storage/secure_storage_service.dart';
import 'package:jetkir/models/product_model/product_model.dart';

class DioService {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://jetkir-back.prolabagency.com/api/v1/',
      headers: {
        'Accept': 'application/json',
      },
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SecureStorageService.getToken();

          if (token != null) {
            options.headers['Authorization'] = 'Token $token';
          }

          return handler.next(options);
        },
      ),
    );
}


class ProductRepository {
  Future<ProductModel> getProductByBarcode(String barcode) async {
    try {
      final response = await DioService.dio.get(
        'products/get/by-barcode/$barcode/',
      );

      return ProductModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(e.response?.data ?? 'Ошибка загрузки продукта');
    }
  }
}