import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class ResponseData {
  final String status;
  final List data;

  ResponseData({this.status, this.data});

  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}

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

@JsonSerializable()
class Employees {
  final String id;
  @JsonKey(name: 'employee_name')
  final String employeeName;
  @JsonKey(name: 'employee_salary')
  final String employeeSalary;
  @JsonKey(name: 'employee_age')
  final String employeeAge;
  @JsonKey(name: 'profile_image')
  final String profileImage;

  Employees({this.id, this.employeeName, this.employeeSalary, this.employeeAge, this.profileImage});

  factory Employees.fromJson(Map<String, dynamic> json) => _$EmployeesFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeesToJson(this);
}