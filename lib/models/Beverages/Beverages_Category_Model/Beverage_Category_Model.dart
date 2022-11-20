import 'package:json_annotation/json_annotation.dart';

part 'Beverage_Category_Model.g.dart';

@JsonSerializable()
class Beverage_Category_Model {

  @JsonKey(name: "strIngredient1")
  String strIngredient1;

  Beverage_Category_Model(this.strIngredient1);

  factory Beverage_Category_Model.fromJson(Map<String, dynamic> json) => _$Beverage_Category_ModelFromJson(json);
  Map<String, dynamic> toJson() => _$Beverage_Category_ModelToJson(this);
}