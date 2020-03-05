import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Notes {
  final int id;
  final String title;
  final String desc;
  final List todo;
  final String created;

  Notes(this.id, this.title, this.desc, this.todo, this.created);

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
  Map<String, dynamic> toJson() => _$NotesToJson(this);
}