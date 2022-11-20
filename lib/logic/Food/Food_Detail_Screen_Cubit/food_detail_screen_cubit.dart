import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe/models/Food/Details/Food_Details_Model.dart';

import '../../../repository/Food/Food_Details.dart';

part 'food_detail_screen_state.dart';

class FoodDetailScreenCubit extends Cubit<FoodDetailScreenState> {
  FoodDetailScreenCubit() : super(FoodDetailScreenLoading());

  Food_Details food_details = Food_Details();

  Future<void> getFoodDetail(String endpoint) async {

    try {

      emit(FoodDetailScreenLoading());
      final foodDetail = await food_details.getFoodDetail(endpoint);
      emit(FoodDetailScreenLoaded(foodDetail!));

    } catch(e) {
      print(e);
      emit(FoodDetailScreenLoadingFailed());
    }

  }

}
