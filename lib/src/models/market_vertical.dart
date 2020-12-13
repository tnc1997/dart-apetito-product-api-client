import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'market_vertical.g.dart';

@JsonSerializable()
class MarketVertical extends Model<String> {
  String? name;

  MarketVertical({
    required String id,
    this.name,
  }) : super(
          id: id,
        );

  factory MarketVertical.fromJson(Map<String, dynamic> json) =>
      _$MarketVerticalFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$MarketVerticalToJson(this);
}
