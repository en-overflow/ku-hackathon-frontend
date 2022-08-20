// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterList _$$_RegisterListFromJson(Map<String, dynamic> json) =>
    _$_RegisterList(
      adPotos:
          (json['adPotos'] as List<dynamic>).map((e) => e as String).toList(),
      userMoney: json['userMoney'] as String,
      userName: json['userName'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_RegisterListToJson(_$_RegisterList instance) =>
    <String, dynamic>{
      'adPotos': instance.adPotos,
      'userMoney': instance.userMoney,
      'userName': instance.userName,
      'category': instance.category,
    };
