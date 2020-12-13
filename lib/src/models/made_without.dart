import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'made_without.g.dart';

@JsonSerializable()
class MadeWithout extends Model<String> {
  String? name;

  MadeWithout({
    required String id,
    this.name,
  }) : super(
          id: id,
        );

  factory MadeWithout.fromJson(Map<String, dynamic> json) =>
      _$MadeWithoutFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$MadeWithoutToJson(this);
}
