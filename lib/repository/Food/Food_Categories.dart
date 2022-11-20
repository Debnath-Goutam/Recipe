import 'package:dio/dio.dart';

import '../../models/Food/Foods_Category_Model/Food_Category_Model.dart';

class Food_Categories {

  Dio _dio = Dio();

  Future<List<Food_Category_Model>?> getFoodCategories(String endpoint) async{

    try {
      Response response = await _dio.get(endpoint);
      return response.data['categories'].map<Food_Category_Model>((json) => Food_Category_Model.fromJson(json)).toList();
    } on Exception catch (e) {
      print(e);
      return null;
    }

  }

}