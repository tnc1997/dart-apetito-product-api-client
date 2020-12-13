import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'node.g.dart';

@JsonSerializable()
class Node extends Model<int> {
  String? name;
  String? image;
  int? sortOrder;

  Node({
    required int id,
    this.name,
    this.image,
    this.sortOrder,
  }) : super(
          id: id,
        );

  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$NodeToJson(this);
}
