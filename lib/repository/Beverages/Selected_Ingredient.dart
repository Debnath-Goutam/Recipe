
import 'package:dio/dio.dart';

import '../../models/Beverages/Selected_Ingredient_Model/Selected_Ingredient_Model.dart';

class Selected_Ingredient {

  Dio _dio = Dio();

  Future<List<Selected_Ingredient_Model>?> getSelectedIngredient(String endpoint) async {

    try {
      Response response = await _dio.get(endpoint);
      return response.data['drinks'].map<Selected_Ingredient_Model>((json) => Selected_Ingredient_Model.fromJson(json)).toList();

    } catch(e) {
      //print('repo exception: $e');
      return null;
    }

  }

}