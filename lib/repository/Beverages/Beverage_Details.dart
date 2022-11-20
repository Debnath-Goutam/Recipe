import 'package:dio/dio.dart';

import '../../models/Beverages/Beverage_Detail_Model/Beverage_Details_Model.dart';

class Beverage_Details {

  Dio _dio = Dio();

  Future<List<Beverage_Details_Model>?> getBeverageDetail(String endpoint) async {

    try {
      Response response = await _dio.get(endpoint);
      return response.data['drinks'].map<Beverage_Details_Model>((json) => Beverage_Details_Model.fromJson(json)).toList();
    } on Exception catch (e) {
      print(e);
      return null;
    }

  }

}