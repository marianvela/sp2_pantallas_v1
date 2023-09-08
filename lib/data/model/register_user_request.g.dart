// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserRequest _$RegisterUserRequestFromJson(Map<String, dynamic> json) =>
    RegisterUserRequest(
      userEmail: json['userEmail'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      nitEmpresa: json['nitEmpresa'] as String,
      nameEmpresa: json['nameEmpresa'] as String,
    );

Map<String, dynamic> _$RegisterUserRequestToJson(
        RegisterUserRequest instance) =>
    <String, dynamic>{
      'userEmail': instance.userEmail,
      'password': instance.password,
      'name': instance.name,
      'lastName': instance.lastName,
      'nitEmpresa': instance.nitEmpresa,
      'nameEmpresa': instance.nameEmpresa,
    };
