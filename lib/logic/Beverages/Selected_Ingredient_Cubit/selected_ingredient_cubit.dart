import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe/repository/Beverages/Selected_Ingredient.dart';
import '../../../models/Beverages/Selected_Ingredient_Model/Selected_Ingredient_Model.dart';

part 'selected_ingredient_state.dart';

class SelectedIngredientCubit extends Cubit<SelectedIngredientState> {

  SelectedIngredientCubit() : super(SelectedIngredientInitial());

  Selected_Ingredient _selected_ingredient = Selected_Ingredient();

  Future<void> getSelectedIngredient(String category) async {

    try {

      emit(SelectedIngredientLoading());
      final beverageIngredient = await _selected_ingredient.getSelectedIngredient("https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=$category");
      emit(SelectedIngredientLoaded(beverageIngredient!));

    }catch(e) {
      print('exception $e');
      emit(SelectedIngredientLoadingFailed());
    }

  }

}
