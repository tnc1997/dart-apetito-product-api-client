import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel.g.dart';

@JsonSerializable()
class Channel extends Model<int> {
  String? name;

  Channel({
    required int id,
    this.name,
  }) : super(
          id: id,
        );

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}
