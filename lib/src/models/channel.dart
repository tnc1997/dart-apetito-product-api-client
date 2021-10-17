import 'model.dart';

class Channel extends Model<int> {
  Channel({
    this.name,
    required int id,
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

  static Channel fromJson(Map<String, dynamic> json) => Channel(
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
