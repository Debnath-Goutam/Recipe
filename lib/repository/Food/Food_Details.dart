import 'package:dio/dio.dart';

import '../../models/Food/Details/Food_Details_Model.dart';

class Food_Details {

  Dio _dio = Dio();

  Future<List<Food_Details_Model>?> getFoodDetail(String endpoint) async {

    try {
      Response response = await _dio.get(endpoint);
      return response.data['meals'].map<Food_Details_Model>((json) => Food_Details_Model.fromJson(json)).toList();
    } on Exception catch (e) {
      print(e);
      return null;
    }

  }

}