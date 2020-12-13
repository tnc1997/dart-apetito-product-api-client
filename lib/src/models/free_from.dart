import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'free_from.g.dart';

@JsonSerializable()
class FreeFrom extends Model<String> {
  String? name;

  FreeFrom({
    required String id,
    this.name,
  }) : super(
          id: id,
        );

  factory FreeFrom.fromJson(Map<String, dynamic> json) =>
      _$FreeFromFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$FreeFromToJson(this);
}
