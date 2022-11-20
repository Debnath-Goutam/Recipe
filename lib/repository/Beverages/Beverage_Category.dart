
import 'package:dio/dio.dart';
import 'package:recipe/models/Beverages/Beverages_Category_Model/Beverage_Category_Model.dart';

class Beverage_Categories {

  Dio _dio = Dio();

  Future<List<Beverage_Category_Model>?> getBeverageCategory(String endpoint) async {

    try {
      Response response = await _dio.get(endpoint);
      return response.data['drinks'].map<Beverage_Category_Model>((json) => Beverage_Category_Model.fromJson(json)).toList();
    } on Exception catch (e) {
      print(e);
      return null;
    }

  }

}