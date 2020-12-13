import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_categorisation.g.dart';

@JsonSerializable()
class MealCategorisation extends Model<String> {
  String? name;

  MealCategorisation({
    required String id,
    this.name,
  }) : super(
          id: id,
        );

  factory MealCategorisation.fromJson(Map<String, dynamic> json) =>
      _$MealCategorisationFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$MealCategorisationToJson(this);
}
