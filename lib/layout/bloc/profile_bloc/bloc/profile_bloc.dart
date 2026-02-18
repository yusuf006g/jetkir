import 'package:bloc/bloc.dart';
import 'package:jetkir/shared/network/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository repository;

  ProfileBloc(this.repository)
      : super(const ProfileState()) {

    on<LoadProfile>((event, emit) async {
      emit(state.copyWith(isLoading: true, error: null));

      try {
        final profiles = await repository.getProfile();

        emit(state.copyWith(
          isLoading: false,
          data: profiles,
        ));
      } catch (e) {
        emit(state.copyWith(
          isLoading: false,
          error: e.toString(),
        ));
      }
    });
  }
}
