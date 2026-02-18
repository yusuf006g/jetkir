part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthRequestEvent extends AuthEvent {
  final LoginModel loginModel;

  AuthRequestEvent({required this.loginModel});
}
