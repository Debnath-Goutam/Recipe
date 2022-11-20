import 'package:json_annotation/json_annotation.dart';

part 'Selected_Category_Model.g.dart';

@JsonSerializable()
class Selected_Category_Model {

  @JsonKey(name: "strMeal")
  String strMeal;
  
  @JsonKey(name: "strMealThumb")
  String strMealThumb;
  
  @JsonKey(name: "idMeal")
  String idMeal;

  Selected_Category_Model(this.strMeal, this.strMealThumb, this.idMeal);

  factory Selected_Category_Model.fromJson(Map<String, dynamic> json) => _$Selected_Category_ModelFromJson(json);
  Map<String, dynamic> toJson() => _$Selected_Category_ModelToJson(this);
  
}