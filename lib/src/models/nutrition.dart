import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nutrition.g.dart';

@JsonSerializable()
class Nutrition extends Model<String> {
  String? name;
  int? displayOrder;
  double? referenceIntake;

  Nutrition({
    required String id,
    this.name,
    this.displayOrder,
    this.referenceIntake,
  }) : super(
          id: id,
        );

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$NutritionToJson(this);
}
