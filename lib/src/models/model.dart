abstract class Model<T> {
  Model({
    required this.id,
    this.created,
    this.creator,
    this.updated,
    this.updater,
  });

  final T id;

  DateTime? created;

  String? creator;

  DateTime? updated;

  String? updater;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Model && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  Map<String, dynamic> toJson() => {
        'id': id,
        'created': created?.toUtc().toIso8601String(),
        'creator': creator,
        'updated': updated?.toUtc().toIso8601String(),
        'updater': updater,
      };
}
