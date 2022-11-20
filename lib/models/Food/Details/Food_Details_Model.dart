import 'package:json_annotation/json_annotation.dart';

part 'Food_Details_Model.g.dart';

@JsonSerializable()
class Food_Details_Model {

  @JsonKey(name: "strMeal")
  String strMeal;

  @JsonKey(name: "strInstructions")
  String strInstructions;

  @JsonKey(name: "strMealThumb")
  String strMealThumb;

  @JsonKey(name: "strIngredient1")
  String strIngredient1;

  @JsonKey(name: "strIngredient2")
  String strIngredient2;

  @JsonKey(name: "strIngredient3")
  String strIngredient3;

  @JsonKey(name: "strIngredient4")
  String strIngredient4;

  @JsonKey(name: "strIngredient5")
  String strIngredient5;

  @JsonKey(name: "strIngredient6")
  String strIngredient6;

  @JsonKey(name: "strIngredient7")
  String strIngredient7;

  @JsonKey(name: "strIngredient8")
  String strIngredient8;

  @JsonKey(name: "strIngredient9")
  String strIngredient9;

  @JsonKey(name: "strIngredient10")
  String strIngredient10;

  @JsonKey(name: "strIngredient11")
  String strIngredient11;

  @JsonKey(name: "strIngredient12")
  String strIngredient12;

  @JsonKey(name: "strIngredient13")
  String strIngredient13;

  @JsonKey(name: "strIngredient14")
  String strIngredient14;

  @JsonKey(name: "strIngredient15")
  String strIngredient15;

  @JsonKey(name: "strIngredient16")
  String strIngredient16;

  @JsonKey(name: "strIngredient17")
  String strIngredient17;

  @JsonKey(name: "strIngredient18")
  String strIngredient18;

  @JsonKey(name: "strIngredient19")
  String strIngredient19;

  @JsonKey(name: "strIngredient20")
  String strIngredient20;

  @JsonKey(name: "strMeasure1")
  String strMeasure1;

  @JsonKey(name: "strMeasure2")
  String strMeasure2;

  @JsonKey(name: "strMeasure3")
  String strMeasure3;

  @JsonKey(name: "strMeasure4")
  String strMeasure4;

  @JsonKey(name: "strMeasure5")
  String strMeasure5;

  @JsonKey(name: "strMeasure6")
  String strMeasure6;

  @JsonKey(name: "strMeasure7")
  String strMeasure7;

  @JsonKey(name: "strMeasure8")
  String strMeasure8;

  @JsonKey(name: "strMeasure9")
  String strMeasure9;

  @JsonKey(name: "strMeasure10")
  String strMeasure10;

  @JsonKey(name: "strMeasure11")
  String strMeasure11;

  @JsonKey(name: "strMeasure12")
  String strMeasure12;

  @JsonKey(name: "strMeasure13")
  String strMeasure13;

  @JsonKey(name: "strMeasure14")
  String strMeasure14;

  @JsonKey(name: "strMeasure15")
  String strMeasure15;

  @JsonKey(name: "strMeasure16")
  String strMeasure16;

  @JsonKey(name: "strMeasure17")
  String strMeasure17;

  @JsonKey(name: "strMeasure18")
  String strMeasure18;

  @JsonKey(name: "strMeasure19")
  String strMeasure19;

  @JsonKey(name: "strMeasure20")
  String strMeasure20;


  Food_Details_Model(
      this.strMeal,
      this.strInstructions,
      this.strMealThumb,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strMeasure16,
      this.strMeasure17,
      this.strMeasure18,
      this.strMeasure19,
      this.strMeasure20);

  factory Food_Details_Model.fromJson(Map<String, dynamic> json) => _$Food_Details_ModelFromJson(json);
  Map<String, dynamic> toJson() => _$Food_Details_ModelToJson(this);

}