import 'package:bloc/bloc.dart';
import 'package:jetkir/models/login_model.dart';
import 'package:jetkir/shared/network/dio_helper.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthRequestEvent>(_onAuthRequestEvent);
  }
  Future<void> _onAuthRequestEvent(
    AuthRequestEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    try {
      final response = await DioHelper.post(
        url: '/accounts/login/',
        data: event.loginModel.toMap(),
      );
      emit(AuthSuccess(data: response.data));
    } catch (e) {
      emit(AuthFailed(error: e.toString()));
    }
  }
}
