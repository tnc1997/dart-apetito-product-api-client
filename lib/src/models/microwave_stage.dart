import 'model.dart';

class MicrowaveStage extends Model<String> {
  MicrowaveStage({
    this.wattage,
    this.stage,
    required String id,
    DateTime? created,
    String? creator,
    DateTime? updated,
    String? updater,
  }) : super(
          id: id,
          created: created,
          updated: updated,
          updater: updater,
        );

  int? wattage;

  int? stage;

  @override
  Map<String, dynamic> toJson() => {
        'wattage': wattage,
        'stage': stage,
        ...super.toJson(),
      };

  static MicrowaveStage fromJson(Map<String, dynamic> json) => MicrowaveStage(
        wattage: (json['wattage'] as num?)?.toInt(),
        stage: (json['stage'] as num?)?.toInt(),
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
