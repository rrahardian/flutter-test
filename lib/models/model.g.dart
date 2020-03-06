// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return ResponseData(
    status: json['status'] as String,
    data: json['data'] as List,
  );
}

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

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

Employees _$EmployeesFromJson(Map<String, dynamic> json) {
  return Employees(
    id: json['id'] as String,
    employeeName: json['employee_name'] as String,
    employeeSalary: json['employee_salary'] as String,
    employeeAge: json['employee_age'] as String,
    profileImage: json['profile_image'] as String,
  );
}

Map<String, dynamic> _$EmployeesToJson(Employees instance) => <String, dynamic>{
      'id': instance.id,
      'employee_name': instance.employeeName,
      'employee_salary': instance.employeeSalary,
      'employee_age': instance.employeeAge,
      'profile_image': instance.profileImage,
    };
