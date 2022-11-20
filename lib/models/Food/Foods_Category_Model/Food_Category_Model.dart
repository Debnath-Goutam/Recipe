import 'package:json_annotation/json_annotation.dart';

part 'Food_Category_Model.g.dart';

@JsonSerializable()
class Food_Category_Model {

  @JsonKey(name: "idCategory")
  String idCategory;

  @JsonKey(name: "strCategory")
  String strCategory;

  @JsonKey(name: "strCategoryThumb")
  String strCategoryThumb;

  Food_Category_Model(this.idCategory, this.strCategory, this.strCategoryThumb);

  factory Food_Category_Model.fromJson(Map<String, dynamic> json) => _$Food_Category_ModelFromJson(json);
  Map<String, dynamic> toJson() => _$Food_Category_ModelToJson(this);

}

