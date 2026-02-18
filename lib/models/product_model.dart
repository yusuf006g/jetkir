class ProductModel {
  final int id;
  final String trackingNumber;
  final double? weight;
  final double? totalPrice;
  final String status;
  final String packaging;
  final bool isIntoTheBattens;
  final String createdAt;

  ProductModel({
    required this.id,
    required this.trackingNumber,
    this.weight,
    this.totalPrice,
    required this.status,
    required this.packaging,
    required this.isIntoTheBattens,
    required this.createdAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      trackingNumber: json['tracking_number'],
      weight: json['weight']?.toDouble(),
      totalPrice: json['total_price']?.toDouble(),
      status: json['status'],
      packaging: json['packaging'],
      isIntoTheBattens: json['is_into_the_battens'] ?? false,
      createdAt: json['created_at'],
    );
  }
}
