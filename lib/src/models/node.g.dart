// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Node _$NodeFromJson(Map<String, dynamic> json) {
  return Node(
    id: json['id'] as int,
    name: json['name'] as String,
    image: json['image'] as String,
    sortOrder: json['sortOrder'] as int,
  );
}

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'sortOrder': instance.sortOrder,
    };
