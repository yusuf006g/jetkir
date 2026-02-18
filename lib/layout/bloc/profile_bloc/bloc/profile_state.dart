part of 'profile_bloc.dart';

class ProfileState {
  final bool isLoading;
  final String? error;
  final dynamic data;

  const ProfileState({
    this.isLoading = false,
    this.error,
    this.data,
  });

  ProfileState copyWith({
    bool? isLoading,
    String? error,
    dynamic data,
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }
}
