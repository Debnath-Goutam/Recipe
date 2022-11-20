import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe/repository/Food/Selected_Category.dart';
import '../../../models/Food/Selected_Category_Model/Selected_Category_Model.dart';

part 'selected_category_state.dart';

class SelectedCategoryCubit extends Cubit<SelectedCategoryState> {

  SelectedCategoryCubit() : super(SelectedCategoryInitial());
  
  Selected_Category _selected_category = Selected_Category();
  
  Future<void> getSelectedCategory(String category) async {
    
    try {
      
      emit(SelectedCategoryLoading());
      final foodCategory = await _selected_category.getSelectedCategory("https://www.themealdb.com/api/json/v1/1/filter.php?c=$category");
      emit(SelectedCategoryLoaded(foodCategory!));
      
    }catch(e) {
      print('exception: $e');
      emit(SelectedCategoryLoadingFailed());
    }
    
  }
  
}
