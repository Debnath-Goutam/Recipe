import 'package:dio/dio.dart';
import 'package:recipe/models/Food/Selected_Category_Model/Selected_Category_Model.dart';

class Selected_Category {

  Dio _dio = Dio();

  Future<List<Selected_Category_Model>?> getSelectedCategory(String endpoint) async {

    try {

      Response response = await _dio.get(endpoint);
      return response.data['meals'].map<Selected_Category_Model>((json) => Selected_Category_Model.fromJson(json)).toList();

    } catch(e) {
      print(e);
      return null;
    }

  }

}