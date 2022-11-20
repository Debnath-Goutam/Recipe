import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe/repository/Food/Food_Categories.dart';

import '../../../models/Food/Foods_Category_Model/Food_Category_Model.dart';

part 'food_categories_state.dart';

class FoodCategoriesCubit extends Cubit<FoodCategoriesState> {
  FoodCategoriesCubit() : super(FoodCategoriesLoading());

  Food_Categories food_categories = Food_Categories();

  Future<void> getFoodCategories() async {

    try {
      emit(FoodCategoriesLoading());
      final foodCategoties = await food_categories.getFoodCategories("https://www.themealdb.com/api/json/v1/1/categories.php");
      emit(FoodCategoriesLoaded(foodCategoties!));
    } catch(e) {
      print(e);
      emit(FoodCategoriesLoadingFailed());
    }

  }

  onClick(String category) {
    emit(FoodCategoryClicked(category));
  }


}


