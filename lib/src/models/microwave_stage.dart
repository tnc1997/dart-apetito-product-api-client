import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'microwave_stage.g.dart';

@JsonSerializable()
class MicrowaveStage extends Model<String> {
  int? wattage;
  int? stage;

  MicrowaveStage({
    required String id,
    this.wattage,
    this.stage,
  }) : super(
          id: id,
        );

  factory MicrowaveStage.fromJson(Map<String, dynamic> json) =>
      _$MicrowaveStageFromJson(json);

  Map<String, dynamic> toJson() => _$MicrowaveStageToJson(this);
}
