import 'package:json_annotation/json_annotation.dart';

part 'Selected_Ingredient_Model.g.dart';

@JsonSerializable()
class Selected_Ingredient_Model {

  @JsonKey(name: "strDrink")
  String strDrink;

  @JsonKey(name: "strDrinkThumb")
  String strDrinkThumb;

  @JsonKey(name: "idDrink")
  String idDrink;

  Selected_Ingredient_Model(this.strDrink, this.strDrinkThumb, this.idDrink);

  factory Selected_Ingredient_Model.fromJson(Map<String, dynamic> json) => _$Selected_Ingredient_ModelFromJson(json);
  Map<String, dynamic> toJson() => _$Selected_Ingredient_ModelToJson(this);

}