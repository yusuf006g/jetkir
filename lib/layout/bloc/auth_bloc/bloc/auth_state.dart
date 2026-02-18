part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final Map<String, dynamic> data;

  AuthSuccess({required this.data});
}

class AuthFailed extends AuthState {
  final String error;

  AuthFailed({required this.error});
}
