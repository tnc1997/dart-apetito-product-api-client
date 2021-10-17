import 'model.dart';

class ServingType extends Model<String> {
  ServingType({
    this.name,
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

  @override
  String toString() => name ?? super.toString();

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        ...super.toJson(),
      };

  static ServingType fromJson(Map<String, dynamic> json) => ServingType(
        name: json['name'],
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
