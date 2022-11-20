// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Food_Category_Model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food_Category_Model _$Food_Category_ModelFromJson(Map<String, dynamic> json) =>
    Food_Category_Model(
      json['idCategory'] as String,
      json['strCategory'] as String,
      json['strCategoryThumb'] as String,
    );

Map<String, dynamic> _$Food_Category_ModelToJson(
        Food_Category_Model instance) =>
    <String, dynamic>{
      'idCategory': instance.idCategory,
      'strCategory': instance.strCategory,
      'strCategoryThumb': instance.strCategoryThumb,
    };
