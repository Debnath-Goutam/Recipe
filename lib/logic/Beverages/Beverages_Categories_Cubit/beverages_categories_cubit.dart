import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe/repository/Beverages/Beverage_Category.dart';

import '../../../models/Beverages/Beverages_Category_Model/Beverage_Category_Model.dart';

part 'beverages_categories_state.dart';

class BeveragesCategoriesCubit extends Cubit<BeveragesCategoriesState> {
  BeveragesCategoriesCubit() : super(BeveragesCategoriesLoading());

  Beverage_Categories _beverage_categories = Beverage_Categories();

  Future<void> getBevegareCategories() async {

    try {

      emit(BeveragesCategoriesLoading());
      final beverageCategories = await _beverage_categories.getBeverageCategory("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list");
      emit(BeveragesCategoriesLoaded(beverageCategories!));

    } catch(e) {
      print(e);
    }

  }


  onClick(String category) {
    emit(BeveragesCategoriesClicked(category));
  }


}
