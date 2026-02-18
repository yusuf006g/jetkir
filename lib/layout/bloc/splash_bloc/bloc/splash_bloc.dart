import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final FlutterSecureStorage storage;

  SplashBloc({required this.storage}) : super(SplashInitial()) {
    on<CheckToken>((event, emit) async {
      emit(SplashLoading());

      // Проверяем токен
      final token = await storage.read(key: 'token');

      await Future.delayed(const Duration(seconds: 1)); // анимация splash

      if (token != null && token.isNotEmpty) {
        emit(SplashAuthorized());
      } else {
        emit(SplashUnauthorized());
      }
    });
  }
}
