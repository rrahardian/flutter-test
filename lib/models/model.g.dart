// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notes _$NotesFromJson(Map<String, dynamic> json) {
  return Notes(
    json['id'] as int,
    json['title'] as String,
    json['desc'] as String,
    json['todo'] as List,
    json['created'] as String,
  );
}

Map<String, dynamic> _$NotesToJson(Notes instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.desc,
      'todo': instance.todo,
      'created': instance.created,
    };
