import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_type.g.dart';

@JsonSerializable()
class MealType extends Model<String> {
  String? name;

  MealType({
    required String id,
    this.name,
  }) : super(
          id: id,
        );

  factory MealType.fromJson(Map<String, dynamic> json) =>
      _$MealTypeFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$MealTypeToJson(this);
}
