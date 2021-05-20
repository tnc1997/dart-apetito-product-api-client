import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'warning.g.dart';

@JsonSerializable()
class Warning extends Model<String> {
  String? name;

  Warning({
    required String id,
    this.name,
  }) : super(
          id: id,
        );

  factory Warning.fromJson(Map<String, dynamic> json) =>
      _$WarningFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$WarningToJson(this);
}
