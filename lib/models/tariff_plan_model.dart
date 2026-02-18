class TariffPlanModel {
  final int id;
  final String name;
  final String price;
  final String? description;
  final int? limit;
  final bool? showInApp;
  final bool? isDefault;

  TariffPlanModel({
    required this.id,
    required this.name,
    required this.price,
    this.description,
    this.limit,
    this.showInApp,
    this.isDefault,
  });

  factory TariffPlanModel.fromJson(Map<String, dynamic> json) {
    return TariffPlanModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toString(),
      description: json['description'],
      limit: json['limit'],
      showInApp: json['show_in_app'],
      isDefault: json['is_default'],
    );
  }
}
