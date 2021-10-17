import 'model.dart';

class Nutrition extends Model<String> {
  Nutrition({
    this.name,
    this.displayOrder,
    this.referenceIntake,
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

  String? name;

  int? displayOrder;

  double? referenceIntake;

  @override
  String toString() => name ?? super.toString();

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'displayOrder': displayOrder,
        'referenceIntake': referenceIntake,
        ...super.toJson(),
      };

  static Nutrition fromJson(Map<String, dynamic> json) => Nutrition(
        name: json['name'],
        displayOrder: (json['displayOrder'] as num?)?.toInt(),
        referenceIntake: (json['referenceIntake'] as num?)?.toDouble(),
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
