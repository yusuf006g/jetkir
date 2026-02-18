import 'package:jetkir/core/storage/dio/dio_service.dart';
import 'package:jetkir/models/user_profile_model.dart';


class ProfileRepository {

  Future<List<UserProfileModel>> getProfile() async {
    final response =
        await DioService.dio.get('accounts/profile/');

    final List data = response.data;

    return data
        .map((json) => UserProfileModel.fromJson(json))
        .toList();
  }
}
