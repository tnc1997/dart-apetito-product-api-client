import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ranking.g.dart';

@JsonSerializable()
class Ranking extends Model<String> {
  String? name;

  Ranking({
    required String id,
    this.name,
  }) : super(
          id: id,
        );

  factory Ranking.fromJson(Map<String, dynamic> json) =>
      _$RankingFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$RankingToJson(this);
}
