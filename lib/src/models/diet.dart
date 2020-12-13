import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'diet.g.dart';

@JsonSerializable()
class Diet extends Model<String> {
  String? name;

  Diet({
    required String id,
    this.name,
  }) : super(
          id: id,
        );

  factory Diet.fromJson(Map<String, dynamic> json) => _$DietFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$DietToJson(this);
}
