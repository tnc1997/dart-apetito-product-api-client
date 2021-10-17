import 'model.dart';

class Catalog extends Model<String> {
  Catalog({
    this.catalogId,
    this.name,
    this.published,
    this.sortOrder,
    this.categoryId,
    this.categoryImage,
    this.categoryName,
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

  int? catalogId;

  String? name;

  bool? published;

  int? sortOrder;

  int? categoryId;

  String? categoryImage;

  String? categoryName;

  @override
  String toString() => name ?? super.toString();

  @override
  Map<String, dynamic> toJson() => {
        'catalogId': catalogId,
        'name': name,
        'published': published,
        'sortOrder': sortOrder,
        'categoryId': categoryId,
        'categoryImage': categoryImage,
        'categoryName': categoryName,
        ...super.toJson(),
      };

  static Catalog fromJson(Map<String, dynamic> json) => Catalog(
        catalogId: (json['catalogId'] as num?)?.toInt(),
        name: json['name'],
        published: json['published'],
        sortOrder: (json['sortOrder'] as num?)?.toInt(),
        categoryId: (json['categoryId'] as num?)?.toInt(),
        categoryImage: json['categoryImage'],
        categoryName: json['categoryName'],
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
