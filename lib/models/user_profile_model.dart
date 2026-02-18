import 'tariff_plan_model.dart';

class UserProfileModel {
  final int id;
  final TariffPlanModel? tariffPlan;
  final String? lastLogin;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String phone;
  final String? image;
  final String? middleName;
  final String? lastActivity;
  final String? role;
  final int? amountOfProducts;
  final bool? isNotifications;
  final String? barcode;
  final String? gender;
  final String? dateBirth;
  final bool? isCanChangePrice;
  final String? username;
  final int? region;

  UserProfileModel({
    required this.id,
    this.tariffPlan,
    this.lastLogin,
    this.firstName,
    this.lastName,
    this.email,
    required this.phone,
    this.image,
    this.middleName,
    this.lastActivity,
    this.role,
    this.amountOfProducts,
    this.isNotifications,
    this.barcode,
    this.gender,
    this.dateBirth,
    this.isCanChangePrice,
    this.username,
    this.region,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      id: json['id'],
      tariffPlan: json['tariff_plan'] != null
          ? TariffPlanModel.fromJson(json['tariff_plan'])
          : null,
      lastLogin: json['last_login'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      image: json['image'],
      middleName: json['middle_name'],
      lastActivity: json['last_activity'],
      role: json['role'],
      amountOfProducts: json['amount_of_products'],
      isNotifications: json['is_notifications'],
      barcode: json['barcode'],
      gender: json['gender'],
      dateBirth: json['date_birth'],
      isCanChangePrice: json['is_can_change_price'],
      username: json['username'],
      region: json['region'],
    );
  }
}
